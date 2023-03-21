package com.romanpierson.vertx.web;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;
import io.vertx.core.impl.logging.Logger;
import io.vertx.core.impl.logging.LoggerFactory;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.Router;

public class SimpleJsonResponseVerticle extends AbstractVerticle {

	final Logger logger = LoggerFactory.getLogger(SimpleJsonResponseVerticle.class);

	@Override
	public void start(Promise<Void> startPromise) throws Exception {

		final Router router = Router.router(vertx);

		router.get("/sleep/:sleepTimeMs").blockingHandler(ctx -> {

			final String sleepTimeMsAsString = ctx.pathParam("sleepTimeMs");

			try {
				Thread.sleep(Long.parseLong(sleepTimeMsAsString));
			} catch (NumberFormatException | InterruptedException ex) {
				logger.error("Error in sleep endpoint", ex);
			}
			
			final JsonObject resultJson = new JsonObject();

			resultJson.put("uri", ctx.request().uri());

			ctx.response().putHeader("Content-Type", "application/json; charset=utf-8")
					.end(resultJson.encodePrettily());
			
		});

		vertx.createHttpServer().requestHandler(router).listen(8080);

		startPromise.complete();
	}

	@Override
	public void stop(Promise<Void> stopPromise) throws Exception {

		stopPromise.complete();

	}
}

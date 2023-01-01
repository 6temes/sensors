import * as Sentry from '@sentry/browser'

Sentry.init({
  dsn: window.SENTRY_DSN,

  release: window.HEROKU_RELEASE_VERSION,
  environment: window.SENTRY_ENV,
})

if (window.USER_SLUG) {
  Sentry.setUser({
    id: window.USER_SLUG,
    email: window.USER_EMAIL,
    username: window.USER_NAME,
    user_type: window.USER_TYPE,
  })
}

# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap
pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
# pin_all_from 'app/javascript/lib', under: 'lib'

pin 'chartkick', to: 'chartkick.js'
pin 'Chart.bundle', to: 'Chart.bundle.js'

# pin '@sentry/browser', to: 'https://ga.jspm.io/npm:@sentry/browser@7.17.2/esm/index.js'
# pin '@sentry/core', to: 'https://ga.jspm.io/npm:@sentry/core@7.17.2/esm/index.js'
# pin '@sentry/utils', to: 'https://ga.jspm.io/npm:@sentry/utils@7.17.2/esm/index.js'

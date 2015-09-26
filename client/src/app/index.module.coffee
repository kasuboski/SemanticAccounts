angular.module 'semanticAccounts', ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ui.router', 'ui.bootstrap', 'rails']
  .factory "Account", (RailsResource) ->
    class Account extends RailsResource
      @configure url: "/api/accounts", name: "account"
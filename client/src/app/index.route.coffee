angular.module "semanticAccounts"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/"
        templateUrl: "app/main/main.html"
        controller: "MainController"
        controllerAs: "main"
      .state "accounts",
        url: "/accounts",
        templateUrl: "app/views/accounts.html",
        controller: "AccountsCtrl"

    $urlRouterProvider.otherwise '/'

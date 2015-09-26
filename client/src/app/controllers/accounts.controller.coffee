angular.module "semanticAccounts"
  .controller "AccountsCtrl", ($scope, Account) ->
    Account.query().then (accounts) -> $scope.accounts = accounts
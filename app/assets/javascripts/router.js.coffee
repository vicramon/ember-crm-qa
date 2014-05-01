App.Router.reopen
  location: 'auto'
  rootURL: '/'

App.Router.map ->
  @resource 'leads', path: '/', ->
    @route 'new'
    @resource 'lead', path: '/lead/:id', ->
      @route 'edit'

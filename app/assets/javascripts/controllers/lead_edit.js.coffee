App.LeadEditController = Ember.ObjectController.extend

  isEditing: false

  actions:

    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'lead'

    cancel: ->
      @get('model').rollback()
      @transitionToRoute 'lead'

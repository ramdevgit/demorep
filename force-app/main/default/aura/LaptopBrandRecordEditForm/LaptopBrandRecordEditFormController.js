({
	mhandleLoad: function(cmp, event, helper) {
        cmp.set('v.showSpinner', false);
    },
     handleSubmit: function(cmp, event, helper) {
        cmp.set('v.disabled', true);
        cmp.set('v.showSpinner', true);
    },
     handleError: function(cmp, event, helper) {
       
        cmp.set('v.showSpinner', false);
    },
     handleSuccess: function(cmp, event, helper) {
        var params = event.getParams();
        cmp.set('v.recordId', params.response.id);
        cmp.set('v.showSpinner', false);
        cmp.set('v.saved', true);
    }
})
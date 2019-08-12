({
    init : function(component, event, helper) {
        var action = component.get("c.getAliases");
        
        action.setParams({
            accountId : component.get("v.recordId")
        });
        
        action.setCallback(this, function(response) {
            var state = response.getState();

            if (state === "SUCCESS") {
                component.set("v.aliases", response.getReturnValue());
            }
        });

        $A.enqueueAction(action);
    }
})
trigger trg2 on Contact(after Insert,after Update,after Delete,after Undelete)
{
    if(trigger.isAfter && trigger.isUpdate)
    {
        if(trigger.new != null && trigger.oldMap != null)
        {
            trgController.trgMethod(trigger.new,trigger.oldMap);
        }
    }
    
    else if(trigger.isAfter && trigger.isDelete)
    {
        if(trigger.old != null)
        {
            trgController.trgMethod(trigger.old, null);
        }
    }
    
    else 
    {
        if(trigger.new != null)
        {
        trgController.trgMethod(trigger.new, null);
        }
    }
}

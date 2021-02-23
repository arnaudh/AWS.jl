# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: appintegrations
using AWS.Compat
using AWS.UUIDs

"""
    CreateEventIntegration()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Creates an EventIntegration, given a specified name, description, and a reference to an Amazon Eventbridge bus in your account and a partner event source that will push events to that bus. No objects are created in the your account, only metadata that is persisted on the EventIntegration control plane.

# Required Parameters
- `EventBridgeBus`: The Eventbridge bus.
- `EventFilter`: The event filter.
- `Name`: The name of the event integration.

# Optional Parameters
- `ClientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
- `Description`: The description of the event integration.
- `Tags`: One or more tags.
"""
create_event_integration(EventBridgeBus, EventFilter, Name; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("POST", "/eventIntegrations", Dict{String, Any}("EventBridgeBus"=>EventBridgeBus, "EventFilter"=>EventFilter, "Name"=>Name, "ClientToken"=>string(uuid4())); aws_config=aws_config)
create_event_integration(EventBridgeBus, EventFilter, Name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("POST", "/eventIntegrations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("EventBridgeBus"=>EventBridgeBus, "EventFilter"=>EventFilter, "Name"=>Name, "ClientToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    DeleteEventIntegration()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Deletes the specified existing event integration. If the event integration is associated with clients, the request is rejected.

# Required Parameters
- `Name`: The name of the event integration.

"""
delete_event_integration(Name; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("DELETE", "/eventIntegrations/$(Name)"; aws_config=aws_config)
delete_event_integration(Name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("DELETE", "/eventIntegrations/$(Name)", args; aws_config=aws_config)

"""
    GetEventIntegration()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Return information about the event integration.

# Required Parameters
- `Name`: The name of the event integration. 

"""
get_event_integration(Name; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("GET", "/eventIntegrations/$(Name)"; aws_config=aws_config)
get_event_integration(Name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("GET", "/eventIntegrations/$(Name)", args; aws_config=aws_config)

"""
    ListEventIntegrationAssociations()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Returns a paginated list of event integration associations in the account. 

# Required Parameters
- `Name`: The name of the event integration. 

# Optional Parameters
- `maxResults`: The maximum number of results to return per page.
- `nextToken`: The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
"""
list_event_integration_associations(Name; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("GET", "/eventIntegrations/$(Name)/associations"; aws_config=aws_config)
list_event_integration_associations(Name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("GET", "/eventIntegrations/$(Name)/associations", args; aws_config=aws_config)

"""
    ListEventIntegrations()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Returns a paginated list of event integrations in the account.

# Optional Parameters
- `maxResults`: The maximum number of results to return per page.
- `nextToken`: The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
"""
list_event_integrations(; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("GET", "/eventIntegrations"; aws_config=aws_config)
list_event_integrations(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("GET", "/eventIntegrations", args; aws_config=aws_config)

"""
    ListTagsForResource()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Lists the tags for the specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource. 

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    TagResource()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Adds the specified tags to the specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.
- `tags`: One or more tags. 

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Removes the specified tags from the specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.
- `tagKeys`: The tag keys.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateEventIntegration()

The Amazon AppIntegrations APIs are in preview release and are subject to change. Updates the description of an event integration.

# Required Parameters
- `Name`: The name of the event integration.

# Optional Parameters
- `Description`: The description of the event inegration.
"""
update_event_integration(Name; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("PATCH", "/eventIntegrations/$(Name)"; aws_config=aws_config)
update_event_integration(Name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = appintegrations("PATCH", "/eventIntegrations/$(Name)", args; aws_config=aws_config)
# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: ssm_incidents
using AWS.Compat
using AWS.UUIDs

"""
    create_replication_set(regions)
    create_replication_set(regions, params::Dict{String,<:Any})

A replication set replicates and encrypts your data to the provided Regions with the
provided KMS key.

# Arguments
- `regions`: The Regions that Incident Manager replicates your data to. You can have up to
  three Regions in your replication set.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
"""
create_replication_set(regions; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/createReplicationSet", Dict{String, Any}("regions"=>regions, "clientToken"=>string(uuid4())); aws_config=aws_config)
create_replication_set(regions, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/createReplicationSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("regions"=>regions, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    create_response_plan(incident_template, name)
    create_response_plan(incident_template, name, params::Dict{String,<:Any})

Creates a response plan that automates the initial response to incidents. A response plan
engages contacts, starts chat channel collaboration, and initiates runbooks at the
beginning of an incident.

# Arguments
- `incident_template`: Details used to create an incident when using this response plan.
- `name`: The short format name of the response plan. Can't include spaces.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"actions"`: The actions that the response plan starts at the beginning of an incident.
- `"chatChannel"`: The AWS Chatbot chat channel used for collaboration during an incident.
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
- `"displayName"`: The long format of the response plan name. This field can contain spaces.
- `"engagements"`: The contacts and escalation plans that the response plan engages during
  an incident.
- `"tags"`: A list of tags that you are adding to the response plan.
"""
create_response_plan(incidentTemplate, name; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/createResponsePlan", Dict{String, Any}("incidentTemplate"=>incidentTemplate, "name"=>name, "clientToken"=>string(uuid4())); aws_config=aws_config)
create_response_plan(incidentTemplate, name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/createResponsePlan", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("incidentTemplate"=>incidentTemplate, "name"=>name, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    create_timeline_event(event_data, event_time, event_type, incident_record_arn)
    create_timeline_event(event_data, event_time, event_type, incident_record_arn, params::Dict{String,<:Any})

Creates a custom timeline event on the incident details page of an incident record.
Timeline events are automatically created by Incident Manager, marking key moment during an
incident. You can create custom timeline events to mark important events that are
automatically detected by Incident Manager.

# Arguments
- `event_data`: A valid JSON string. There is no other schema imposed. A short description
  of the event.
- `event_time`: The time that the event occurred.
- `event_type`: The type of the event. You can create timeline events of type Custom Event.
- `incident_record_arn`: The Amazon Resource Name (ARN) of the incident record you are
  adding the event to.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
"""
create_timeline_event(eventData, eventTime, eventType, incidentRecordArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/createTimelineEvent", Dict{String, Any}("eventData"=>eventData, "eventTime"=>eventTime, "eventType"=>eventType, "incidentRecordArn"=>incidentRecordArn, "clientToken"=>string(uuid4())); aws_config=aws_config)
create_timeline_event(eventData, eventTime, eventType, incidentRecordArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/createTimelineEvent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("eventData"=>eventData, "eventTime"=>eventTime, "eventType"=>eventType, "incidentRecordArn"=>incidentRecordArn, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    delete_incident_record(arn)
    delete_incident_record(arn, params::Dict{String,<:Any})

Delete an incident record from Incident Manager.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the incident record you are deleting.

"""
delete_incident_record(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteIncidentRecord", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
delete_incident_record(arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteIncidentRecord", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    delete_replication_set(arn)
    delete_replication_set(arn, params::Dict{String,<:Any})

Deletes all Regions in your replication set. Deleting the replication set deletes all
Incident Manager data.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the replication set you're deleting.

"""
delete_replication_set(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteReplicationSet", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
delete_replication_set(arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteReplicationSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    delete_resource_policy(policy_id, resource_arn)
    delete_resource_policy(policy_id, resource_arn, params::Dict{String,<:Any})

Deletes the resource policy that AWS Resource Access Manager uses to share your Incident
Manager resource.

# Arguments
- `policy_id`: The ID of the resource policy you're deleting.
- `resource_arn`: The Amazon Resource Name (ARN) of the resource you're deleting the policy
  from.

"""
delete_resource_policy(policyId, resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteResourcePolicy", Dict{String, Any}("policyId"=>policyId, "resourceArn"=>resourceArn); aws_config=aws_config)
delete_resource_policy(policyId, resourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteResourcePolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("policyId"=>policyId, "resourceArn"=>resourceArn), params)); aws_config=aws_config)

"""
    delete_response_plan(arn)
    delete_response_plan(arn, params::Dict{String,<:Any})

Deletes the specified response plan. Deleting a response plan stops all linked CloudWatch
alarms and EventBridge events from creating an incident with this response plan.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the response plan.

"""
delete_response_plan(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteResponsePlan", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
delete_response_plan(arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteResponsePlan", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    delete_timeline_event(event_id, incident_record_arn)
    delete_timeline_event(event_id, incident_record_arn, params::Dict{String,<:Any})

Deletes a timeline event from an incident.

# Arguments
- `event_id`: The ID of the event you are updating. You can find this by using
  ListTimelineEvents.
- `incident_record_arn`: The Amazon Resource Name (ARN) of the incident that the event is
  part of.

"""
delete_timeline_event(eventId, incidentRecordArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteTimelineEvent", Dict{String, Any}("eventId"=>eventId, "incidentRecordArn"=>incidentRecordArn); aws_config=aws_config)
delete_timeline_event(eventId, incidentRecordArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/deleteTimelineEvent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("eventId"=>eventId, "incidentRecordArn"=>incidentRecordArn), params)); aws_config=aws_config)

"""
    get_incident_record(arn)
    get_incident_record(arn, params::Dict{String,<:Any})

Returns the details of the specified incident record.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the incident record.

"""
get_incident_record(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/getIncidentRecord", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
get_incident_record(arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/getIncidentRecord", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    get_replication_set(arn)
    get_replication_set(arn, params::Dict{String,<:Any})

Retrieve your Incident Manager replication set.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the replication set you want to retrieve.

"""
get_replication_set(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/getReplicationSet", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
get_replication_set(arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/getReplicationSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    get_resource_policies(resource_arn)
    get_resource_policies(resource_arn, params::Dict{String,<:Any})

Retrieves the resource policies attached to the specified response plan.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the response plan with the attached
  resource policy.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of resource policies to display per page of results.
- `"nextToken"`: The pagination token to continue to the next page of results.
"""
get_resource_policies(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/getResourcePolicies", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
get_resource_policies(resourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/getResourcePolicies", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), params)); aws_config=aws_config)

"""
    get_response_plan(arn)
    get_response_plan(arn, params::Dict{String,<:Any})

Retrieves the details of the specified response plan.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the response plan.

"""
get_response_plan(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/getResponsePlan", Dict{String, Any}("arn"=>arn); aws_config=aws_config)
get_response_plan(arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/getResponsePlan", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn), params)); aws_config=aws_config)

"""
    get_timeline_event(event_id, incident_record_arn)
    get_timeline_event(event_id, incident_record_arn, params::Dict{String,<:Any})

Retrieves a timeline event based on its ID and incident record.

# Arguments
- `event_id`: The ID of the event. You can get an event's ID when you create it or by using
  ListTimelineEvents.
- `incident_record_arn`: The Amazon Resource Name (ARN) of the incident that the timeline
  event is part of.

"""
get_timeline_event(eventId, incidentRecordArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/getTimelineEvent", Dict{String, Any}("eventId"=>eventId, "incidentRecordArn"=>incidentRecordArn); aws_config=aws_config)
get_timeline_event(eventId, incidentRecordArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/getTimelineEvent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("eventId"=>eventId, "incidentRecordArn"=>incidentRecordArn), params)); aws_config=aws_config)

"""
    list_incident_records()
    list_incident_records(params::Dict{String,<:Any})

Lists all incident records in your account. Use this command to retrieve the Amazon
Resource Name (ARN) of the incident record you want to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: Filter the list of incident records you are searching through. You can
  filter on the following keys:    creationTime     impact     status     createdBy
- `"maxResults"`: The maximum number of results per page.
- `"nextToken"`: The pagination token to continue to the next page of results.
"""
list_incident_records(; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listIncidentRecords"; aws_config=aws_config)
list_incident_records(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listIncidentRecords", params; aws_config=aws_config)

"""
    list_related_items(incident_record_arn)
    list_related_items(incident_record_arn, params::Dict{String,<:Any})

List all related items for an incident record.

# Arguments
- `incident_record_arn`: The Amazon Resource Name (ARN) of the incident record that you are
  listing related items for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of related items per page.
- `"nextToken"`: The pagination token to continue to the next page of results.
"""
list_related_items(incidentRecordArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listRelatedItems", Dict{String, Any}("incidentRecordArn"=>incidentRecordArn); aws_config=aws_config)
list_related_items(incidentRecordArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listRelatedItems", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("incidentRecordArn"=>incidentRecordArn), params)); aws_config=aws_config)

"""
    list_replication_sets()
    list_replication_sets(params::Dict{String,<:Any})

Lists details about the replication set configured in your account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results per page.
- `"nextToken"`: The pagination token to continue to the next page of results.
"""
list_replication_sets(; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listReplicationSets"; aws_config=aws_config)
list_replication_sets(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listReplicationSets", params; aws_config=aws_config)

"""
    list_response_plans()
    list_response_plans(params::Dict{String,<:Any})

Lists all response plans in your account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of response plans per page.
- `"nextToken"`: The pagination token to continue to the next page of results.
"""
list_response_plans(; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listResponsePlans"; aws_config=aws_config)
list_response_plans(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listResponsePlans", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags that are attached to the specified response plan.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the response plan.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("GET", "/tags/$(resourceArn)", params; aws_config=aws_config)

"""
    list_timeline_events(incident_record_arn)
    list_timeline_events(incident_record_arn, params::Dict{String,<:Any})

Lists timeline events of the specified incident record.

# Arguments
- `incident_record_arn`: The Amazon Resource Name (ARN) of the incident that the event is
  part of.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: Filters the timeline events based on the provided conditional values. You
  can filter timeline events using the following keys:    eventTime     eventType
- `"maxResults"`: The maximum number of results per page.
- `"nextToken"`: The pagination token to continue to the next page of results.
- `"sortBy"`: Sort by the specified key value pair.
- `"sortOrder"`: Sorts the order of timeline events by the value specified in the sortBy
  field.
"""
list_timeline_events(incidentRecordArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listTimelineEvents", Dict{String, Any}("incidentRecordArn"=>incidentRecordArn); aws_config=aws_config)
list_timeline_events(incidentRecordArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/listTimelineEvents", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("incidentRecordArn"=>incidentRecordArn), params)); aws_config=aws_config)

"""
    put_resource_policy(policy, resource_arn)
    put_resource_policy(policy, resource_arn, params::Dict{String,<:Any})

Adds a resource policy to the specified response plan.

# Arguments
- `policy`: Details of the resource policy.
- `resource_arn`: The Amazon Resource Name (ARN) of the response plan you're adding the
  resource policy to.

"""
put_resource_policy(policy, resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/putResourcePolicy", Dict{String, Any}("policy"=>policy, "resourceArn"=>resourceArn); aws_config=aws_config)
put_resource_policy(policy, resourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/putResourcePolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("policy"=>policy, "resourceArn"=>resourceArn), params)); aws_config=aws_config)

"""
    start_incident(response_plan_arn)
    start_incident(response_plan_arn, params::Dict{String,<:Any})

Used to start an incident from CloudWatch alarms, EventBridge events, or manually.

# Arguments
- `response_plan_arn`: The Amazon Resource Name (ARN) of the response plan that pre-defines
  summary, chat channels, SNS topics, runbooks, title, and impact of the incident.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
- `"impact"`: Defines the impact to the customers. Providing an impact overwrites the
  impact provided by a response plan.  Possible impacts:     1 - Critical impact, this
  typically relates to full application failure that impacts many to all customers.     2 -
  High impact, partial application failure with impact to many customers.    3 - Medium
  impact, the application is providing reduced service to customers.    4 - Low impact,
  customer might aren't impacted by the problem yet.    5 - No impact, customers aren't
  currently impacted but urgent action is needed to avoid impact.
- `"relatedItems"`: Add related items to the incident for other responders to use. Related
  items are AWS resources, external links, or files uploaded to an S3 bucket.
- `"title"`: Provide a title for the incident. Providing a title overwrites the title
  provided by the response plan.
- `"triggerDetails"`: Details of what created the incident record in Incident Manager.
"""
start_incident(responsePlanArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/startIncident", Dict{String, Any}("responsePlanArn"=>responsePlanArn, "clientToken"=>string(uuid4())); aws_config=aws_config)
start_incident(responsePlanArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/startIncident", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("responsePlanArn"=>responsePlanArn, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds a tag to a response plan.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the response plan you're adding the
  tags to.
- `tags`: A list of tags that you are adding to the response plan.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes a tag from a resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the response plan you're removing a tag
  from.
- `tag_keys`: The name of the tag you're removing from the response plan.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_deletion_protection(arn, deletion_protected)
    update_deletion_protection(arn, deletion_protected, params::Dict{String,<:Any})

Update deletion protection to either allow or deny deletion of the final Region in a
replication set.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the replication set you're updating.
- `deletion_protected`: Details if deletion protection is enabled or disabled in your
  account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
"""
update_deletion_protection(arn, deletionProtected; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateDeletionProtection", Dict{String, Any}("arn"=>arn, "deletionProtected"=>deletionProtected, "clientToken"=>string(uuid4())); aws_config=aws_config)
update_deletion_protection(arn, deletionProtected, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateDeletionProtection", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn, "deletionProtected"=>deletionProtected, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    update_incident_record(arn)
    update_incident_record(arn, params::Dict{String,<:Any})

Update the details of an incident record. You can use this action to update an incident
record from the defined chat channel. For more information about using actions in chat
channels, see Interacting through chat.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the incident record you are updating.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"chatChannel"`: The AWS Chatbot chat channel for responders to collaborate in.
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
- `"impact"`: Defines the impact to customers and applications. Providing an impact
  overwrites the impact provided by the response plan.  Possible impacts:     1 - Critical
  impact, this typically relates to full application failure that impacts many to all
  customers.     2 - High impact, partial application failure with impact to many customers.
    3 - Medium impact, the application is providing reduced service to customers.    4 - Low
  impact, customer might aren't impacted by the problem yet.    5 - No impact, customers
  aren't currently impacted but urgent action is needed to avoid impact.
- `"notificationTargets"`: The SNS targets that are notified when updates are made to an
  incident. Using multiple SNS topics creates redundancy in the case that a Region is down
  during the incident.
- `"status"`: The status of the incident. An incident can be Open or Resolved.
- `"summary"`: The summary describes what has happened during the incident.
- `"title"`: The title of the incident is a brief and easily recognizable.
"""
update_incident_record(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateIncidentRecord", Dict{String, Any}("arn"=>arn, "clientToken"=>string(uuid4())); aws_config=aws_config)
update_incident_record(arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateIncidentRecord", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    update_related_items(incident_record_arn, related_items_update)
    update_related_items(incident_record_arn, related_items_update, params::Dict{String,<:Any})

Add or remove related items from the related items tab of an incident record.

# Arguments
- `incident_record_arn`: The Amazon Resource Name (ARN) of the incident record you are
  updating related items in.
- `related_items_update`: Details about the item you are adding or deleting.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
"""
update_related_items(incidentRecordArn, relatedItemsUpdate; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateRelatedItems", Dict{String, Any}("incidentRecordArn"=>incidentRecordArn, "relatedItemsUpdate"=>relatedItemsUpdate, "clientToken"=>string(uuid4())); aws_config=aws_config)
update_related_items(incidentRecordArn, relatedItemsUpdate, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateRelatedItems", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("incidentRecordArn"=>incidentRecordArn, "relatedItemsUpdate"=>relatedItemsUpdate, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    update_replication_set(actions, arn)
    update_replication_set(actions, arn, params::Dict{String,<:Any})

Add or delete Regions from your replication set.

# Arguments
- `actions`: An action to add or delete a Region.
- `arn`: The Amazon Resource Name (ARN) of the replication set you're updating.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
"""
update_replication_set(actions, arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateReplicationSet", Dict{String, Any}("actions"=>actions, "arn"=>arn, "clientToken"=>string(uuid4())); aws_config=aws_config)
update_replication_set(actions, arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateReplicationSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("actions"=>actions, "arn"=>arn, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    update_response_plan(arn)
    update_response_plan(arn, params::Dict{String,<:Any})

Updates the specified response plan.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the response plan.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"actions"`: The actions that this response plan takes at the beginning of an incident.
- `"chatChannel"`: The AWS Chatbot chat channel used for collaboration during an incident.
  Use the empty structure to remove the chat channel from the response plan.
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
- `"displayName"`: The long format name of the response plan. Can't contain spaces.
- `"engagements"`: The contacts and escalation plans that Incident Manager engages at the
  start of the incident.
- `"incidentTemplateDedupeString"`: Used to create only one incident record for an incident.
- `"incidentTemplateImpact"`: Defines the impact to the customers. Providing an impact
  overwrites the impact provided by a response plan.  Possible impacts:     5 - Severe impact
     4 - High impact    3 - Medium impact    2 - Low impact    1 - No impact
- `"incidentTemplateNotificationTargets"`: The SNS targets that are notified when updates
  are made to an incident.
- `"incidentTemplateSummary"`: A brief summary of the incident. This typically contains
  what has happened, what's currently happening, and next steps.
- `"incidentTemplateTitle"`: The short format name of the incident. Can't contain spaces.
"""
update_response_plan(arn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateResponsePlan", Dict{String, Any}("arn"=>arn, "clientToken"=>string(uuid4())); aws_config=aws_config)
update_response_plan(arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateResponsePlan", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("arn"=>arn, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    update_timeline_event(event_id, incident_record_arn)
    update_timeline_event(event_id, incident_record_arn, params::Dict{String,<:Any})

Updates a timeline event. You can update events of type Custom Event.

# Arguments
- `event_id`: The ID of the event you are updating. You can find this by using
  ListTimelineEvents.
- `incident_record_arn`: The Amazon Resource Name (ARN) of the incident that the timeline
  event is part of.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A token ensuring that the action is called only once with the specified
  details.
- `"eventData"`: A short description of the event.
- `"eventTime"`: The time that the event occurred.
- `"eventType"`: The type of the event. You can update events of type Custom Event.
"""
update_timeline_event(eventId, incidentRecordArn; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateTimelineEvent", Dict{String, Any}("eventId"=>eventId, "incidentRecordArn"=>incidentRecordArn, "clientToken"=>string(uuid4())); aws_config=aws_config)
update_timeline_event(eventId, incidentRecordArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = ssm_incidents("POST", "/updateTimelineEvent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("eventId"=>eventId, "incidentRecordArn"=>incidentRecordArn, "clientToken"=>string(uuid4())), params)); aws_config=aws_config)

# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: connect_contact_lens
using AWS.Compat
using AWS.UUIDs

"""
    list_realtime_contact_analysis_segments(contact_id, instance_id)
    list_realtime_contact_analysis_segments(contact_id, instance_id, params::Dict{String,<:Any})

Provides a list of analysis segments for a real-time analysis session.

# Arguments
- `contact_id`: The identifier of the contact.
- `instance_id`: The identifier of the Amazon Connect instance.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximimum number of results to return per page.
- `"NextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
list_realtime_contact_analysis_segments(ContactId, InstanceId; aws_config::AbstractAWSConfig=global_aws_config()) = connect_contact_lens("POST", "/realtime-contact-analysis/analysis-segments", Dict{String, Any}("ContactId"=>ContactId, "InstanceId"=>InstanceId); aws_config=aws_config)
list_realtime_contact_analysis_segments(ContactId, InstanceId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = connect_contact_lens("POST", "/realtime-contact-analysis/analysis-segments", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ContactId"=>ContactId, "InstanceId"=>InstanceId), params)); aws_config=aws_config)
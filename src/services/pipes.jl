# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: pipes
using AWS.Compat
using AWS.UUIDs

"""
    create_pipe(name, role_arn, source, target)
    create_pipe(name, role_arn, source, target, params::Dict{String,<:Any})

Create a pipe. Amazon EventBridge Pipes connect event sources to targets and reduces the
need for specialized knowledge and integration code.

# Arguments
- `name`: The name of the pipe.
- `role_arn`: The ARN of the role that allows the pipe to send data to the target.
- `source`: The ARN of the source resource.
- `target`: The ARN of the target resource.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A description of the pipe.
- `"DesiredState"`: The state the pipe should be in.
- `"Enrichment"`: The ARN of the enrichment resource.
- `"EnrichmentParameters"`: The parameters required to set up enrichment on your pipe.
- `"SourceParameters"`: The parameters required to set up a source for your pipe.
- `"Tags"`: The list of key-value pairs to associate with the pipe.
- `"TargetParameters"`: The parameters required to set up a target for your pipe.
"""
function create_pipe(
    Name, RoleArn, Source, Target; aws_config::AbstractAWSConfig=global_aws_config()
)
    return pipes(
        "POST",
        "/v1/pipes/$(Name)",
        Dict{String,Any}("RoleArn" => RoleArn, "Source" => Source, "Target" => Target);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_pipe(
    Name,
    RoleArn,
    Source,
    Target,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return pipes(
        "POST",
        "/v1/pipes/$(Name)",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "RoleArn" => RoleArn, "Source" => Source, "Target" => Target
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_pipe(name)
    delete_pipe(name, params::Dict{String,<:Any})

Delete an existing pipe. For more information about pipes, see Amazon EventBridge Pipes in
the Amazon EventBridge User Guide.

# Arguments
- `name`: The name of the pipe.

"""
function delete_pipe(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return pipes(
        "DELETE",
        "/v1/pipes/$(Name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_pipe(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return pipes(
        "DELETE",
        "/v1/pipes/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_pipe(name)
    describe_pipe(name, params::Dict{String,<:Any})

Get the information about an existing pipe. For more information about pipes, see Amazon
EventBridge Pipes in the Amazon EventBridge User Guide.

# Arguments
- `name`: The name of the pipe.

"""
function describe_pipe(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return pipes(
        "GET", "/v1/pipes/$(Name)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function describe_pipe(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return pipes(
        "GET",
        "/v1/pipes/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_pipes()
    list_pipes(params::Dict{String,<:Any})

Get the pipes associated with this account. For more information about pipes, see Amazon
EventBridge Pipes in the Amazon EventBridge User Guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CurrentState"`: The state the pipe is in.
- `"DesiredState"`: The state the pipe should be in.
- `"Limit"`: The maximum number of pipes to include in the response.
- `"NamePrefix"`: A value that will return a subset of the pipes associated with this
  account. For example, \"NamePrefix\": \"ABC\" will return all endpoints with \"ABC\" in the
  name.
- `"NextToken"`: If nextToken is returned, there are more results available. The value of
  nextToken is a unique pagination token for each page. Make the call again using the
  returned token to retrieve the next page. Keep all other arguments unchanged. Each
  pagination token expires after 24 hours. Using an expired pagination token will return an
  HTTP 400 InvalidToken error.
- `"SourcePrefix"`: The prefix matching the pipe source.
- `"TargetPrefix"`: The prefix matching the pipe target.
"""
function list_pipes(; aws_config::AbstractAWSConfig=global_aws_config())
    return pipes("GET", "/v1/pipes"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function list_pipes(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return pipes(
        "GET", "/v1/pipes", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Displays the tags associated with a pipe.

# Arguments
- `resource_arn`: The ARN of the pipe for which you want to view tags.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return pipes(
        "GET",
        "/tags/$(resourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return pipes(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_pipe(name)
    start_pipe(name, params::Dict{String,<:Any})

Start an existing pipe.

# Arguments
- `name`: The name of the pipe.

"""
function start_pipe(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return pipes(
        "POST",
        "/v1/pipes/$(Name)/start";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_pipe(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return pipes(
        "POST",
        "/v1/pipes/$(Name)/start",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    stop_pipe(name)
    stop_pipe(name, params::Dict{String,<:Any})

Stop an existing pipe.

# Arguments
- `name`: The name of the pipe.

"""
function stop_pipe(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return pipes(
        "POST",
        "/v1/pipes/$(Name)/stop";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function stop_pipe(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return pipes(
        "POST",
        "/v1/pipes/$(Name)/stop",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Assigns one or more tags (key-value pairs) to the specified pipe. Tags can help you
organize and categorize your resources. You can also use them to scope user permissions by
granting a user permission to access or change only resources with certain tag values. Tags
don't have any semantic meaning to Amazon Web Services and are interpreted strictly as
strings of characters. You can use the TagResource action with a pipe that already has
tags. If you specify a new tag key, this tag is appended to the list of tags associated
with the pipe. If you specify a tag key that is already associated with the pipe, the new
tag value that you specify replaces the previous value for that tag. You can associate as
many as 50 tags with a pipe.

# Arguments
- `resource_arn`: The ARN of the pipe.
- `tags`: The list of key-value pairs associated with the pipe.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return pipes(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    resourceArn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return pipes(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes one or more tags from the specified pipes.

# Arguments
- `resource_arn`: The ARN of the pipe.
- `tag_keys`: The list of tag keys to remove from the pipe.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return pipes(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    resourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return pipes(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_pipe(name, role_arn)
    update_pipe(name, role_arn, params::Dict{String,<:Any})

Update an existing pipe. When you call UpdatePipe, only the fields that are included in the
request are changed, the rest are unchanged. The exception to this is if you modify any
Amazon Web Services-service specific fields in the SourceParameters, EnrichmentParameters,
or TargetParameters objects. The fields in these objects are updated atomically as one and
override existing values. This is by design and means that if you don't specify an optional
field in one of these Parameters objects, that field will be set to its system-default
value after the update. For more information about pipes, see  Amazon EventBridge Pipes in
the Amazon EventBridge User Guide.

# Arguments
- `name`: The name of the pipe.
- `role_arn`: The ARN of the role that allows the pipe to send data to the target.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A description of the pipe.
- `"DesiredState"`: The state the pipe should be in.
- `"Enrichment"`: The ARN of the enrichment resource.
- `"EnrichmentParameters"`: The parameters required to set up enrichment on your pipe.
- `"SourceParameters"`: The parameters required to set up a source for your pipe.
- `"Target"`: The ARN of the target resource.
- `"TargetParameters"`: The parameters required to set up a target for your pipe.
"""
function update_pipe(Name, RoleArn; aws_config::AbstractAWSConfig=global_aws_config())
    return pipes(
        "PUT",
        "/v1/pipes/$(Name)",
        Dict{String,Any}("RoleArn" => RoleArn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_pipe(
    Name,
    RoleArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return pipes(
        "PUT",
        "/v1/pipes/$(Name)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("RoleArn" => RoleArn), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

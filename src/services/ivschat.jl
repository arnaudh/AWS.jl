# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: ivschat
using AWS.Compat
using AWS.UUIDs

"""
    create_chat_token(room_identifier, user_id)
    create_chat_token(room_identifier, user_id, params::Dict{String,<:Any})

Creates an encrypted token that is used by a chat participant to establish an individual
WebSocket chat connection to a room. When the token is used to connect to chat, the
connection is valid for the session duration specified in the request. The token becomes
invalid at the token-expiration timestamp included in the response. Use the capabilities
field to permit an end user to send messages or moderate a room. The attributes field
securely attaches structured data to the chat session; the data is included within each
message sent by the end user and received by other participants in the room. Common use
cases for attributes include passing end-user profile data like an icon, display name,
colors, badges, and other display features. Encryption keys are owned by Amazon IVS Chat
and never used directly by your application.

# Arguments
- `room_identifier`: Identifier of the room that the client is trying to access. Currently
  this must be an ARN.
- `user_id`: Application-provided ID that uniquely identifies the user associated with this
  token. This can be any UTF-8 encoded text.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"attributes"`: Application-provided attributes to encode into the token and attach to a
  chat session. Map keys and values can contain UTF-8 encoded text. The maximum length of
  this field is 1 KB total.
- `"capabilities"`: Set of capabilities that the user is allowed to perform in the room.
  Default: None (the capability to view messages is implicitly included in all requests).
- `"sessionDurationInMinutes"`: Session duration (in minutes), after which the session
  expires. Default: 60 (1 hour).
"""
function create_chat_token(
    roomIdentifier, userId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/CreateChatToken",
        Dict{String,Any}("roomIdentifier" => roomIdentifier, "userId" => userId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_chat_token(
    roomIdentifier,
    userId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/CreateChatToken",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("roomIdentifier" => roomIdentifier, "userId" => userId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_logging_configuration(destination_configuration)
    create_logging_configuration(destination_configuration, params::Dict{String,<:Any})

Creates a logging configuration that allows clients to store and record sent messages.

# Arguments
- `destination_configuration`: A complex type that contains a destination configuration for
  where chat content will be logged. There can be only one type of destination
  (cloudWatchLogs, firehose, or s3) in a destinationConfiguration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"name"`: Logging-configuration name. The value does not need to be unique.
- `"tags"`: Tags to attach to the resource. Array of maps, each of the form string:string
  (key:value). See Tagging AWS Resources for details, including restrictions that apply to
  tags and \"Tag naming limits and requirements\"; Amazon IVS Chat has no constraints on tags
  beyond what is documented there.
"""
function create_logging_configuration(
    destinationConfiguration; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/CreateLoggingConfiguration",
        Dict{String,Any}("destinationConfiguration" => destinationConfiguration);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_logging_configuration(
    destinationConfiguration,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/CreateLoggingConfiguration",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("destinationConfiguration" => destinationConfiguration),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_room()
    create_room(params::Dict{String,<:Any})

Creates a room that allows clients to connect and pass messages.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"loggingConfigurationIdentifiers"`: Array of logging-configuration identifiers attached
  to the room.
- `"maximumMessageLength"`: Maximum number of characters in a single message. Messages are
  expected to be UTF-8 encoded and this limit applies specifically to rune/code-point count,
  not number of bytes. Default: 500.
- `"maximumMessageRatePerSecond"`: Maximum number of messages per second that can be sent
  to the room (by all clients). Default: 10.
- `"messageReviewHandler"`: Configuration information for optional review of messages.
- `"name"`: Room name. The value does not need to be unique.
- `"tags"`: Tags to attach to the resource. Array of maps, each of the form string:string
  (key:value). See Tagging AWS Resources for details, including restrictions that apply to
  tags and \"Tag naming limits and requirements\"; Amazon IVS Chat has no constraints beyond
  what is documented there.
"""
function create_room(; aws_config::AbstractAWSConfig=global_aws_config())
    return ivschat(
        "POST", "/CreateRoom"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function create_room(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/CreateRoom",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_logging_configuration(identifier)
    delete_logging_configuration(identifier, params::Dict{String,<:Any})

Deletes the specified logging configuration.

# Arguments
- `identifier`: Identifier of the logging configuration to be deleted.

"""
function delete_logging_configuration(
    identifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/DeleteLoggingConfiguration",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_logging_configuration(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/DeleteLoggingConfiguration",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_message(id, room_identifier)
    delete_message(id, room_identifier, params::Dict{String,<:Any})

Sends an event to a specific room which directs clients to delete a specific message; that
is, unrender it from view and delete it from the client’s chat history. This event’s
EventName is aws:DELETE_MESSAGE. This replicates the  DeleteMessage WebSocket operation in
the Amazon IVS Chat Messaging API.

# Arguments
- `id`: ID of the message to be deleted. This is the Id field in the received message (see
  Message (Subscribe) in the Chat Messaging API).
- `room_identifier`: Identifier of the room where the message should be deleted. Currently
  this must be an ARN.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"reason"`: Reason for deleting the message.
"""
function delete_message(
    id, roomIdentifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/DeleteMessage",
        Dict{String,Any}("id" => id, "roomIdentifier" => roomIdentifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_message(
    id,
    roomIdentifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/DeleteMessage",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("id" => id, "roomIdentifier" => roomIdentifier),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_room(identifier)
    delete_room(identifier, params::Dict{String,<:Any})

Deletes the specified room.

# Arguments
- `identifier`: Identifier of the room to be deleted. Currently this must be an ARN.

"""
function delete_room(identifier; aws_config::AbstractAWSConfig=global_aws_config())
    return ivschat(
        "POST",
        "/DeleteRoom",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_room(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/DeleteRoom",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    disconnect_user(room_identifier, user_id)
    disconnect_user(room_identifier, user_id, params::Dict{String,<:Any})

Disconnects all connections using a specified user ID from a room. This replicates the
DisconnectUser WebSocket operation in the Amazon IVS Chat Messaging API.

# Arguments
- `room_identifier`: Identifier of the room from which the user's clients should be
  disconnected. Currently this must be an ARN.
- `user_id`: ID of the user (connection) to disconnect from the room.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"reason"`: Reason for disconnecting the user.
"""
function disconnect_user(
    roomIdentifier, userId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/DisconnectUser",
        Dict{String,Any}("roomIdentifier" => roomIdentifier, "userId" => userId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function disconnect_user(
    roomIdentifier,
    userId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/DisconnectUser",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("roomIdentifier" => roomIdentifier, "userId" => userId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_logging_configuration(identifier)
    get_logging_configuration(identifier, params::Dict{String,<:Any})

Gets the specified logging configuration.

# Arguments
- `identifier`: Identifier of the logging configuration to be retrieved.

"""
function get_logging_configuration(
    identifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/GetLoggingConfiguration",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_logging_configuration(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/GetLoggingConfiguration",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_room(identifier)
    get_room(identifier, params::Dict{String,<:Any})

Gets the specified room.

# Arguments
- `identifier`: Identifier of the room for which the configuration is to be retrieved.
  Currently this must be an ARN.

"""
function get_room(identifier; aws_config::AbstractAWSConfig=global_aws_config())
    return ivschat(
        "POST",
        "/GetRoom",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_room(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/GetRoom",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_logging_configurations()
    list_logging_configurations(params::Dict{String,<:Any})

Gets summary information about all your logging configurations in the AWS region where the
API request is processed.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of logging configurations to return. Default: 50.
- `"nextToken"`: The first logging configurations to retrieve. This is used for pagination;
  see the nextToken response field.
"""
function list_logging_configurations(; aws_config::AbstractAWSConfig=global_aws_config())
    return ivschat(
        "POST",
        "/ListLoggingConfigurations";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_logging_configurations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/ListLoggingConfigurations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_rooms()
    list_rooms(params::Dict{String,<:Any})

Gets summary information about all your rooms in the AWS region where the API request is
processed. Results are sorted in descending order of updateTime.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"loggingConfigurationIdentifier"`: Logging-configuration identifier.
- `"maxResults"`: Maximum number of rooms to return. Default: 50.
- `"messageReviewHandlerUri"`: Filters the list to match the specified message review
  handler URI.
- `"name"`: Filters the list to match the specified room name.
- `"nextToken"`: The first room to retrieve. This is used for pagination; see the nextToken
  response field.
"""
function list_rooms(; aws_config::AbstractAWSConfig=global_aws_config())
    return ivschat(
        "POST", "/ListRooms"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_rooms(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST", "/ListRooms", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Gets information about AWS tags for the specified ARN.

# Arguments
- `resource_arn`: The ARN of the resource to be retrieved. The ARN must be URL-encoded.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
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
    return ivschat(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    send_event(event_name, room_identifier)
    send_event(event_name, room_identifier, params::Dict{String,<:Any})

Sends an event to a room. Use this within your application’s business logic to send
events to clients of a room; e.g., to notify clients to change the way the chat UI is
rendered.

# Arguments
- `event_name`: Application-defined name of the event to send to clients.
- `room_identifier`: Identifier of the room to which the event will be sent. Currently this
  must be an ARN.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"attributes"`: Application-defined metadata to attach to the event sent to clients. The
  maximum length of the metadata is 1 KB total.
"""
function send_event(
    eventName, roomIdentifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/SendEvent",
        Dict{String,Any}("eventName" => eventName, "roomIdentifier" => roomIdentifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function send_event(
    eventName,
    roomIdentifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/SendEvent",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "eventName" => eventName, "roomIdentifier" => roomIdentifier
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds or updates tags for the AWS resource with the specified ARN.

# Arguments
- `resource_arn`: The ARN of the resource to be tagged. The ARN must be URL-encoded.
- `tags`: Array of tags to be added or updated. Array of maps, each of the form
  string:string (key:value). See Tagging AWS Resources for details, including restrictions
  that apply to tags and \"Tag naming limits and requirements\"; Amazon IVS Chat has no
  constraints beyond what is documented there.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return ivschat(
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
    return ivschat(
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

Removes tags from the resource with the specified ARN.

# Arguments
- `resource_arn`: The ARN of the resource to be untagged. The ARN must be URL-encoded.
- `tag_keys`: Array of tags to be removed. Array of maps, each of the form string:string
  (key:value). See Tagging AWS Resources for details, including restrictions that apply to
  tags and \"Tag naming limits and requirements\"; Amazon IVS Chat has no constraints beyond
  what is documented there.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
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
    return ivschat(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_logging_configuration(identifier)
    update_logging_configuration(identifier, params::Dict{String,<:Any})

Updates a specified logging configuration.

# Arguments
- `identifier`: Identifier of the logging configuration to be updated.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"destinationConfiguration"`: A complex type that contains a destination configuration
  for where chat content will be logged. There can be only one type of destination
  (cloudWatchLogs, firehose, or s3) in a destinationConfiguration.
- `"name"`: Logging-configuration name. The value does not need to be unique.
"""
function update_logging_configuration(
    identifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return ivschat(
        "POST",
        "/UpdateLoggingConfiguration",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_logging_configuration(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/UpdateLoggingConfiguration",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_room(identifier)
    update_room(identifier, params::Dict{String,<:Any})

Updates a room’s configuration.

# Arguments
- `identifier`: Identifier of the room to be updated. Currently this must be an ARN.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"loggingConfigurationIdentifiers"`: Array of logging-configuration identifiers attached
  to the room.
- `"maximumMessageLength"`: The maximum number of characters in a single message. Messages
  are expected to be UTF-8 encoded and this limit applies specifically to rune/code-point
  count, not number of bytes. Default: 500.
- `"maximumMessageRatePerSecond"`: Maximum number of messages per second that can be sent
  to the room (by all clients). Default: 10.
- `"messageReviewHandler"`: Configuration information for optional review of messages.
  Specify an empty uri string to disassociate a message review handler from the specified
  room.
- `"name"`: Room name. The value does not need to be unique.
"""
function update_room(identifier; aws_config::AbstractAWSConfig=global_aws_config())
    return ivschat(
        "POST",
        "/UpdateRoom",
        Dict{String,Any}("identifier" => identifier);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_room(
    identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return ivschat(
        "POST",
        "/UpdateRoom",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("identifier" => identifier), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

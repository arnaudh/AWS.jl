# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: marketplace_catalog
using AWS.Compat
using AWS.UUIDs

"""
    cancel_change_set(catalog, change_set_id)
    cancel_change_set(catalog, change_set_id, params::Dict{String,<:Any})

Used to cancel an open change request. Must be sent before the status of the request
changes to APPLYING, the final stage of completing your change request. You can describe a
change during the 60-day request history retention period for API calls.

# Arguments
- `catalog`: Required. The catalog related to the request. Fixed value: AWSMarketplace.
- `change_set_id`: Required. The unique identifier of the StartChangeSet request that you
  want to cancel.

"""
function cancel_change_set(
    catalog, changeSetId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return marketplace_catalog(
        "PATCH",
        "/CancelChangeSet",
        Dict{String,Any}("catalog" => catalog, "changeSetId" => changeSetId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function cancel_change_set(
    catalog,
    changeSetId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return marketplace_catalog(
        "PATCH",
        "/CancelChangeSet",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("catalog" => catalog, "changeSetId" => changeSetId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_change_set(catalog, change_set_id)
    describe_change_set(catalog, change_set_id, params::Dict{String,<:Any})

Provides information about a given change set.

# Arguments
- `catalog`: Required. The catalog related to the request. Fixed value: AWSMarketplace
- `change_set_id`: Required. The unique identifier for the StartChangeSet request that you
  want to describe the details for.

"""
function describe_change_set(
    catalog, changeSetId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return marketplace_catalog(
        "GET",
        "/DescribeChangeSet",
        Dict{String,Any}("catalog" => catalog, "changeSetId" => changeSetId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_change_set(
    catalog,
    changeSetId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return marketplace_catalog(
        "GET",
        "/DescribeChangeSet",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("catalog" => catalog, "changeSetId" => changeSetId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_entity(catalog, entity_id)
    describe_entity(catalog, entity_id, params::Dict{String,<:Any})

Returns the metadata and content of the entity.

# Arguments
- `catalog`: Required. The catalog related to the request. Fixed value: AWSMarketplace
- `entity_id`: Required. The unique ID of the entity to describe.

"""
function describe_entity(
    catalog, entityId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return marketplace_catalog(
        "GET",
        "/DescribeEntity",
        Dict{String,Any}("catalog" => catalog, "entityId" => entityId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_entity(
    catalog,
    entityId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return marketplace_catalog(
        "GET",
        "/DescribeEntity",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("catalog" => catalog, "entityId" => entityId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_change_sets(catalog)
    list_change_sets(catalog, params::Dict{String,<:Any})

Returns the list of change sets owned by the account being used to make the call. You can
filter this list by providing any combination of entityId, ChangeSetName, and status. If
you provide more than one filter, the API operation applies a logical AND between the
filters. You can describe a change during the 60-day request history retention period for
API calls.

# Arguments
- `catalog`: The catalog related to the request. Fixed value: AWSMarketplace

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"FilterList"`: An array of filter objects.
- `"MaxResults"`: The maximum number of results returned by a single call. This value must
  be provided in the next call to retrieve the next set of results. By default, this value is
  20.
- `"NextToken"`: The token value retrieved from a previous call to access the next page of
  results.
- `"Sort"`: An object that contains two attributes, SortBy and SortOrder.
"""
function list_change_sets(Catalog; aws_config::AbstractAWSConfig=global_aws_config())
    return marketplace_catalog(
        "POST",
        "/ListChangeSets",
        Dict{String,Any}("Catalog" => Catalog);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_change_sets(
    Catalog, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return marketplace_catalog(
        "POST",
        "/ListChangeSets",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Catalog" => Catalog), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_entities(catalog, entity_type)
    list_entities(catalog, entity_type, params::Dict{String,<:Any})

Provides the list of entities of a given type.

# Arguments
- `catalog`: The catalog related to the request. Fixed value: AWSMarketplace
- `entity_type`: The type of entities to retrieve.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"FilterList"`: An array of filter objects. Each filter object contains two attributes,
  filterName and filterValues.
- `"MaxResults"`: Specifies the upper limit of the elements on a single page. If a value
  isn't provided, the default value is 20.
- `"NextToken"`: The value of the next token, if it exists. Null if there are no more
  results.
- `"Sort"`: An object that contains two attributes, SortBy and SortOrder.
"""
function list_entities(
    Catalog, EntityType; aws_config::AbstractAWSConfig=global_aws_config()
)
    return marketplace_catalog(
        "POST",
        "/ListEntities",
        Dict{String,Any}("Catalog" => Catalog, "EntityType" => EntityType);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_entities(
    Catalog,
    EntityType,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return marketplace_catalog(
        "POST",
        "/ListEntities",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("Catalog" => Catalog, "EntityType" => EntityType),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_change_set(catalog, change_set)
    start_change_set(catalog, change_set, params::Dict{String,<:Any})

This operation allows you to request changes for your entities. Within a single ChangeSet,
you cannot start the same change type against the same entity multiple times. Additionally,
when a ChangeSet is running, all the entities targeted by the different changes are locked
until the ChangeSet has completed (either succeeded, cancelled, or failed). If you try to
start a ChangeSet containing a change against an entity that is already locked, you will
receive a ResourceInUseException. For example, you cannot start the ChangeSet described in
the example later in this topic, because it contains two changes to execute the same change
type (AddRevisions) against the same entity (entity-id@1). For more information about
working with change sets, see  Working with change sets.

# Arguments
- `catalog`: The catalog related to the request. Fixed value: AWSMarketplace
- `change_set`: Array of change object.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ChangeSetName"`: Optional case sensitive string of up to 100 ASCII characters. The
  change set name can be used to filter the list of change sets.
- `"ClientRequestToken"`: A unique token to identify the request to ensure idempotency.
"""
function start_change_set(
    Catalog, ChangeSet; aws_config::AbstractAWSConfig=global_aws_config()
)
    return marketplace_catalog(
        "POST",
        "/StartChangeSet",
        Dict{String,Any}(
            "Catalog" => Catalog,
            "ChangeSet" => ChangeSet,
            "ClientRequestToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_change_set(
    Catalog,
    ChangeSet,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return marketplace_catalog(
        "POST",
        "/StartChangeSet",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Catalog" => Catalog,
                    "ChangeSet" => ChangeSet,
                    "ClientRequestToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

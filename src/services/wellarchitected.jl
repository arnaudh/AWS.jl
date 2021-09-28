# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: wellarchitected
using AWS.Compat
using AWS.UUIDs

"""
    associate_lenses(lens_aliases, workload_id)
    associate_lenses(lens_aliases, workload_id, params::Dict{String,<:Any})

Associate a lens to a workload.

# Arguments
- `lens_aliases`:
- `workload_id`:

"""
function associate_lenses(
    LensAliases, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/associateLenses",
        Dict{String,Any}("LensAliases" => LensAliases);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function associate_lenses(
    LensAliases,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/associateLenses",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("LensAliases" => LensAliases), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_milestone(client_request_token, milestone_name, workload_id)
    create_milestone(client_request_token, milestone_name, workload_id, params::Dict{String,<:Any})

Create a milestone for an existing workload.

# Arguments
- `client_request_token`:
- `milestone_name`:
- `workload_id`:

"""
function create_milestone(
    ClientRequestToken,
    MilestoneName,
    WorkloadId;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "POST",
        "/workloads/$(WorkloadId)/milestones",
        Dict{String,Any}(
            "ClientRequestToken" => ClientRequestToken, "MilestoneName" => MilestoneName
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_milestone(
    ClientRequestToken,
    MilestoneName,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "POST",
        "/workloads/$(WorkloadId)/milestones",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClientRequestToken" => ClientRequestToken,
                    "MilestoneName" => MilestoneName,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_workload(client_request_token, description, environment, lenses, review_owner, workload_name)
    create_workload(client_request_token, description, environment, lenses, review_owner, workload_name, params::Dict{String,<:Any})

Create a new workload. The owner of a workload can share the workload with other AWS
accounts and IAM users in the same AWS Region. Only the owner of a workload can delete it.
For more information, see Defining a Workload in the AWS Well-Architected Tool User Guide.

# Arguments
- `client_request_token`:
- `description`:
- `environment`:
- `lenses`:
- `review_owner`:
- `workload_name`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AccountIds"`:
- `"ArchitecturalDesign"`:
- `"AwsRegions"`:
- `"Industry"`:
- `"IndustryType"`:
- `"NonAwsRegions"`:
- `"Notes"`:
- `"PillarPriorities"`:
- `"Tags"`: The tags to be associated with the workload.
"""
function create_workload(
    ClientRequestToken,
    Description,
    Environment,
    Lenses,
    ReviewOwner,
    WorkloadName;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "POST",
        "/workloads",
        Dict{String,Any}(
            "ClientRequestToken" => ClientRequestToken,
            "Description" => Description,
            "Environment" => Environment,
            "Lenses" => Lenses,
            "ReviewOwner" => ReviewOwner,
            "WorkloadName" => WorkloadName,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_workload(
    ClientRequestToken,
    Description,
    Environment,
    Lenses,
    ReviewOwner,
    WorkloadName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "POST",
        "/workloads",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClientRequestToken" => ClientRequestToken,
                    "Description" => Description,
                    "Environment" => Environment,
                    "Lenses" => Lenses,
                    "ReviewOwner" => ReviewOwner,
                    "WorkloadName" => WorkloadName,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_workload_share(client_request_token, permission_type, shared_with, workload_id)
    create_workload_share(client_request_token, permission_type, shared_with, workload_id, params::Dict{String,<:Any})

Create a workload share. The owner of a workload can share it with other AWS accounts and
IAM users in the same AWS Region. Shared access to a workload is not removed until the
workload invitation is deleted. For more information, see Sharing a Workload in the AWS
Well-Architected Tool User Guide.

# Arguments
- `client_request_token`:
- `permission_type`:
- `shared_with`:
- `workload_id`:

"""
function create_workload_share(
    ClientRequestToken,
    PermissionType,
    SharedWith,
    WorkloadId;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "POST",
        "/workloads/$(WorkloadId)/shares",
        Dict{String,Any}(
            "ClientRequestToken" => ClientRequestToken,
            "PermissionType" => PermissionType,
            "SharedWith" => SharedWith,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_workload_share(
    ClientRequestToken,
    PermissionType,
    SharedWith,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "POST",
        "/workloads/$(WorkloadId)/shares",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClientRequestToken" => ClientRequestToken,
                    "PermissionType" => PermissionType,
                    "SharedWith" => SharedWith,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_workload(client_request_token, workload_id)
    delete_workload(client_request_token, workload_id, params::Dict{String,<:Any})

Delete an existing workload.

# Arguments
- `client_request_token`:
- `workload_id`:

"""
function delete_workload(
    ClientRequestToken, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "DELETE",
        "/workloads/$(WorkloadId)",
        Dict{String,Any}("ClientRequestToken" => ClientRequestToken);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_workload(
    ClientRequestToken,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "DELETE",
        "/workloads/$(WorkloadId)",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("ClientRequestToken" => ClientRequestToken), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_workload_share(client_request_token, share_id, workload_id)
    delete_workload_share(client_request_token, share_id, workload_id, params::Dict{String,<:Any})

Delete a workload share.

# Arguments
- `client_request_token`:
- `share_id`:
- `workload_id`:

"""
function delete_workload_share(
    ClientRequestToken,
    ShareId,
    WorkloadId;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "DELETE",
        "/workloads/$(WorkloadId)/shares/$(ShareId)",
        Dict{String,Any}("ClientRequestToken" => ClientRequestToken);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_workload_share(
    ClientRequestToken,
    ShareId,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "DELETE",
        "/workloads/$(WorkloadId)/shares/$(ShareId)",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("ClientRequestToken" => ClientRequestToken), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    disassociate_lenses(lens_aliases, workload_id)
    disassociate_lenses(lens_aliases, workload_id, params::Dict{String,<:Any})

Disassociate a lens from a workload.  The AWS Well-Architected Framework lens
(wellarchitected) cannot be removed from a workload.

# Arguments
- `lens_aliases`:
- `workload_id`:

"""
function disassociate_lenses(
    LensAliases, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/disassociateLenses",
        Dict{String,Any}("LensAliases" => LensAliases);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function disassociate_lenses(
    LensAliases,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/disassociateLenses",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("LensAliases" => LensAliases), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_answer(lens_alias, question_id, workload_id)
    get_answer(lens_alias, question_id, workload_id, params::Dict{String,<:Any})

Get the answer to a specific question in a workload review.

# Arguments
- `lens_alias`:
- `question_id`:
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MilestoneNumber"`:
"""
function get_answer(
    LensAlias, QuestionId, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/answers/$(QuestionId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_answer(
    LensAlias,
    QuestionId,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/answers/$(QuestionId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_lens_review(lens_alias, workload_id)
    get_lens_review(lens_alias, workload_id, params::Dict{String,<:Any})

Get lens review.

# Arguments
- `lens_alias`:
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MilestoneNumber"`:
"""
function get_lens_review(
    LensAlias, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_lens_review(
    LensAlias,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_lens_review_report(lens_alias, workload_id)
    get_lens_review_report(lens_alias, workload_id, params::Dict{String,<:Any})

Get lens review report.

# Arguments
- `lens_alias`:
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MilestoneNumber"`:
"""
function get_lens_review_report(
    LensAlias, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/report";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_lens_review_report(
    LensAlias,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/report",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_lens_version_difference(base_lens_version, lens_alias)
    get_lens_version_difference(base_lens_version, lens_alias, params::Dict{String,<:Any})

Get lens version differences.

# Arguments
- `base_lens_version`: The base version of the lens.
- `lens_alias`:

"""
function get_lens_version_difference(
    BaseLensVersion, LensAlias; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/lenses/$(LensAlias)/versionDifference",
        Dict{String,Any}("BaseLensVersion" => BaseLensVersion);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_lens_version_difference(
    BaseLensVersion,
    LensAlias,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/lenses/$(LensAlias)/versionDifference",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("BaseLensVersion" => BaseLensVersion), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_milestone(milestone_number, workload_id)
    get_milestone(milestone_number, workload_id, params::Dict{String,<:Any})

Get a milestone for an existing workload.

# Arguments
- `milestone_number`:
- `workload_id`:

"""
function get_milestone(
    MilestoneNumber, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/milestones/$(MilestoneNumber)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_milestone(
    MilestoneNumber,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/milestones/$(MilestoneNumber)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_workload(workload_id)
    get_workload(workload_id, params::Dict{String,<:Any})

Get an existing workload.

# Arguments
- `workload_id`:

"""
function get_workload(WorkloadId; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_workload(
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_answers(lens_alias, workload_id)
    list_answers(lens_alias, workload_id, params::Dict{String,<:Any})

List of answers.

# Arguments
- `lens_alias`:
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return for this request.
- `"MilestoneNumber"`:
- `"NextToken"`:
- `"PillarId"`:
"""
function list_answers(
    LensAlias, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/answers";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_answers(
    LensAlias,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/answers",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_lens_review_improvements(lens_alias, workload_id)
    list_lens_review_improvements(lens_alias, workload_id, params::Dict{String,<:Any})

List lens review improvements.

# Arguments
- `lens_alias`:
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return for this request.
- `"MilestoneNumber"`:
- `"NextToken"`:
- `"PillarId"`:
"""
function list_lens_review_improvements(
    LensAlias, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/improvements";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_lens_review_improvements(
    LensAlias,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/improvements",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_lens_reviews(workload_id)
    list_lens_reviews(workload_id, params::Dict{String,<:Any})

List lens reviews.

# Arguments
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`:
- `"MilestoneNumber"`:
- `"NextToken"`:
"""
function list_lens_reviews(WorkloadId; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_lens_reviews(
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/lensReviews",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_lenses()
    list_lenses(params::Dict{String,<:Any})

List the available lenses.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`:
- `"NextToken"`:
"""
function list_lenses(; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "GET", "/lenses"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_lenses(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET", "/lenses", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_milestones(workload_id)
    list_milestones(workload_id, params::Dict{String,<:Any})

List all milestones for an existing workload.

# Arguments
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`:
- `"NextToken"`:
"""
function list_milestones(WorkloadId; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "POST",
        "/workloads/$(WorkloadId)/milestonesSummaries";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_milestones(
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "POST",
        "/workloads/$(WorkloadId)/milestonesSummaries",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_notifications()
    list_notifications(params::Dict{String,<:Any})

List lens notifications.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return for this request.
- `"NextToken"`:
- `"WorkloadId"`:
"""
function list_notifications(; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "POST", "/notifications"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_notifications(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "POST",
        "/notifications",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_share_invitations()
    list_share_invitations(params::Dict{String,<:Any})

List the workload invitations.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return for this request.
- `"NextToken"`:
- `"WorkloadNamePrefix"`:
"""
function list_share_invitations(; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "GET", "/shareInvitations"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_share_invitations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/shareInvitations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(workload_arn)
    list_tags_for_resource(workload_arn, params::Dict{String,<:Any})

List the tags for a resource.

# Arguments
- `workload_arn`:

"""
function list_tags_for_resource(
    WorkloadArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "GET",
        "/tags/$(WorkloadArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    WorkloadArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/tags/$(WorkloadArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_workload_shares(workload_id)
    list_workload_shares(workload_id, params::Dict{String,<:Any})

List the workload shares associated with the workload.

# Arguments
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return for this request.
- `"NextToken"`:
- `"SharedWithPrefix"`: The AWS account ID or IAM role with which the workload is shared.
"""
function list_workload_shares(WorkloadId; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/shares";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_workload_shares(
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "GET",
        "/workloads/$(WorkloadId)/shares",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_workloads()
    list_workloads(params::Dict{String,<:Any})

List workloads. Paginated.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return for this request.
- `"NextToken"`:
- `"WorkloadNamePrefix"`:
"""
function list_workloads(; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "POST",
        "/workloadsSummaries";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_workloads(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "POST",
        "/workloadsSummaries",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(tags, workload_arn)
    tag_resource(tags, workload_arn, params::Dict{String,<:Any})

Adds one or more tags to the specified resource.

# Arguments
- `tags`: The tags for the resource.
- `workload_arn`:

"""
function tag_resource(Tags, WorkloadArn; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "POST",
        "/tags/$(WorkloadArn)",
        Dict{String,Any}("Tags" => Tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    Tags,
    WorkloadArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "POST",
        "/tags/$(WorkloadArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Tags" => Tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(workload_arn, tag_keys)
    untag_resource(workload_arn, tag_keys, params::Dict{String,<:Any})

Deletes specified tags from a resource. To specify multiple tags, use separate tagKeys
parameters, for example:  DELETE /tags/WorkloadArn?tagKeys=key1&amp;tagKeys=key2

# Arguments
- `workload_arn`:
- `tag_keys`: A list of tag keys. Existing tags of the resource whose keys are members of
  this list are removed from the resource.

"""
function untag_resource(
    WorkloadArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "DELETE",
        "/tags/$(WorkloadArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    WorkloadArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "DELETE",
        "/tags/$(WorkloadArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_answer(lens_alias, question_id, workload_id)
    update_answer(lens_alias, question_id, workload_id, params::Dict{String,<:Any})

Update the answer to a specific question in a workload review.

# Arguments
- `lens_alias`:
- `question_id`:
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ChoiceUpdates"`: A list of choices to update on a question in your workload. The String
  key corresponds to the choice ID to be updated.
- `"IsApplicable"`:
- `"Notes"`:
- `"Reason"`: The reason why a question is not applicable to your workload.
- `"SelectedChoices"`:
"""
function update_answer(
    LensAlias, QuestionId, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/answers/$(QuestionId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_answer(
    LensAlias,
    QuestionId,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/answers/$(QuestionId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_lens_review(lens_alias, workload_id)
    update_lens_review(lens_alias, workload_id, params::Dict{String,<:Any})

Update lens review.

# Arguments
- `lens_alias`:
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"LensNotes"`:
- `"PillarNotes"`:
"""
function update_lens_review(
    LensAlias, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_lens_review(
    LensAlias,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_share_invitation(share_invitation_action, share_invitation_id)
    update_share_invitation(share_invitation_action, share_invitation_id, params::Dict{String,<:Any})

Update a workload invitation.

# Arguments
- `share_invitation_action`:
- `share_invitation_id`: The ID assigned to the share invitation.

"""
function update_share_invitation(
    ShareInvitationAction,
    ShareInvitationId;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PATCH",
        "/shareInvitations/$(ShareInvitationId)",
        Dict{String,Any}("ShareInvitationAction" => ShareInvitationAction);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_share_invitation(
    ShareInvitationAction,
    ShareInvitationId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PATCH",
        "/shareInvitations/$(ShareInvitationId)",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ShareInvitationAction" => ShareInvitationAction),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_workload(workload_id)
    update_workload(workload_id, params::Dict{String,<:Any})

Update an existing workload.

# Arguments
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AccountIds"`:
- `"ArchitecturalDesign"`:
- `"AwsRegions"`:
- `"Description"`:
- `"Environment"`:
- `"ImprovementStatus"`:
- `"Industry"`:
- `"IndustryType"`:
- `"IsReviewOwnerUpdateAcknowledged"`: Flag indicating whether the workload owner has
  acknowledged that the Review owner field is required. If a Review owner is not added to the
  workload within 60 days of acknowledgement, access to the workload is restricted until an
  owner is added.
- `"NonAwsRegions"`:
- `"Notes"`:
- `"PillarPriorities"`:
- `"ReviewOwner"`:
- `"WorkloadName"`:
"""
function update_workload(WorkloadId; aws_config::AbstractAWSConfig=global_aws_config())
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_workload(
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_workload_share(permission_type, share_id, workload_id)
    update_workload_share(permission_type, share_id, workload_id, params::Dict{String,<:Any})

Update a workload share.

# Arguments
- `permission_type`:
- `share_id`:
- `workload_id`:

"""
function update_workload_share(
    PermissionType, ShareId, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/shares/$(ShareId)",
        Dict{String,Any}("PermissionType" => PermissionType);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_workload_share(
    PermissionType,
    ShareId,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PATCH",
        "/workloads/$(WorkloadId)/shares/$(ShareId)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("PermissionType" => PermissionType), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    upgrade_lens_review(lens_alias, milestone_name, workload_id)
    upgrade_lens_review(lens_alias, milestone_name, workload_id, params::Dict{String,<:Any})

Upgrade lens review.

# Arguments
- `lens_alias`:
- `milestone_name`:
- `workload_id`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`:
"""
function upgrade_lens_review(
    LensAlias, MilestoneName, WorkloadId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return wellarchitected(
        "PUT",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/upgrade",
        Dict{String,Any}("MilestoneName" => MilestoneName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function upgrade_lens_review(
    LensAlias,
    MilestoneName,
    WorkloadId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return wellarchitected(
        "PUT",
        "/workloads/$(WorkloadId)/lensReviews/$(LensAlias)/upgrade",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("MilestoneName" => MilestoneName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

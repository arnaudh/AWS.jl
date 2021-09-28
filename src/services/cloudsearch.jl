# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: cloudsearch
using AWS.Compat
using AWS.UUIDs

"""
    build_suggesters(domain_name)
    build_suggesters(domain_name, params::Dict{String,<:Any})

Indexes the search suggestions. For more information, see Configuring Suggesters in the
Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`:

"""
function build_suggesters(DomainName; aws_config::AbstractAWSConfig=global_aws_config())
    return cloudsearch(
        "BuildSuggesters",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function build_suggesters(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "BuildSuggesters",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_domain(domain_name)
    create_domain(domain_name, params::Dict{String,<:Any})

Creates a new search domain. For more information, see Creating a Search Domain in the
Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`: A name for the domain you are creating. Allowed characters are a-z
  (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number
  and be at least 3 and no more than 28 characters long.

"""
function create_domain(DomainName; aws_config::AbstractAWSConfig=global_aws_config())
    return cloudsearch(
        "CreateDomain",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_domain(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "CreateDomain",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    define_analysis_scheme(analysis_scheme, domain_name)
    define_analysis_scheme(analysis_scheme, domain_name, params::Dict{String,<:Any})

Configures an analysis scheme that can be applied to a text or text-array field to define
language-specific text processing options. For more information, see Configuring Analysis
Schemes in the Amazon CloudSearch Developer Guide.

# Arguments
- `analysis_scheme`:
- `domain_name`:

"""
function define_analysis_scheme(
    AnalysisScheme, DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DefineAnalysisScheme",
        Dict{String,Any}("AnalysisScheme" => AnalysisScheme, "DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function define_analysis_scheme(
    AnalysisScheme,
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DefineAnalysisScheme",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AnalysisScheme" => AnalysisScheme, "DomainName" => DomainName
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    define_expression(domain_name, expression)
    define_expression(domain_name, expression, params::Dict{String,<:Any})

Configures an Expression for the search domain. Used to create new expressions and modify
existing ones. If the expression exists, the new configuration replaces the old one. For
more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`:
- `expression`:

"""
function define_expression(
    DomainName, Expression; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DefineExpression",
        Dict{String,Any}("DomainName" => DomainName, "Expression" => Expression);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function define_expression(
    DomainName,
    Expression,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DefineExpression",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DomainName" => DomainName, "Expression" => Expression),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    define_index_field(domain_name, index_field)
    define_index_field(domain_name, index_field, params::Dict{String,<:Any})

Configures an IndexField for the search domain. Used to create new fields and modify
existing ones. You must specify the name of the domain you are configuring and an index
field configuration. The index field configuration specifies a unique name, the index field
type, and the options you want to configure for the field. The options you can specify
depend on the IndexFieldType. If the field exists, the new configuration replaces the old
one. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer
Guide.

# Arguments
- `domain_name`:
- `index_field`: The index field and field options you want to configure.

"""
function define_index_field(
    DomainName, IndexField; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DefineIndexField",
        Dict{String,Any}("DomainName" => DomainName, "IndexField" => IndexField);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function define_index_field(
    DomainName,
    IndexField,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DefineIndexField",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DomainName" => DomainName, "IndexField" => IndexField),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    define_suggester(domain_name, suggester)
    define_suggester(domain_name, suggester, params::Dict{String,<:Any})

Configures a suggester for a domain. A suggester enables you to display possible matches
before users finish typing their queries. When you configure a suggester, you must specify
the name of the text field you want to search for possible matches and a unique name for
the suggester. For more information, see Getting Search Suggestions in the Amazon
CloudSearch Developer Guide.

# Arguments
- `domain_name`:
- `suggester`:

"""
function define_suggester(
    DomainName, Suggester; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DefineSuggester",
        Dict{String,Any}("DomainName" => DomainName, "Suggester" => Suggester);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function define_suggester(
    DomainName,
    Suggester,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DefineSuggester",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DomainName" => DomainName, "Suggester" => Suggester),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_analysis_scheme(analysis_scheme_name, domain_name)
    delete_analysis_scheme(analysis_scheme_name, domain_name, params::Dict{String,<:Any})

Deletes an analysis scheme. For more information, see Configuring Analysis Schemes in the
Amazon CloudSearch Developer Guide.

# Arguments
- `analysis_scheme_name`: The name of the analysis scheme you want to delete.
- `domain_name`:

"""
function delete_analysis_scheme(
    AnalysisSchemeName, DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DeleteAnalysisScheme",
        Dict{String,Any}(
            "AnalysisSchemeName" => AnalysisSchemeName, "DomainName" => DomainName
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_analysis_scheme(
    AnalysisSchemeName,
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DeleteAnalysisScheme",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AnalysisSchemeName" => AnalysisSchemeName, "DomainName" => DomainName
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_domain(domain_name)
    delete_domain(domain_name, params::Dict{String,<:Any})

Permanently deletes a search domain and all of its data. Once a domain has been deleted, it
cannot be recovered. For more information, see Deleting a Search Domain in the Amazon
CloudSearch Developer Guide.

# Arguments
- `domain_name`: The name of the domain you want to permanently delete.

"""
function delete_domain(DomainName; aws_config::AbstractAWSConfig=global_aws_config())
    return cloudsearch(
        "DeleteDomain",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_domain(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DeleteDomain",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_expression(domain_name, expression_name)
    delete_expression(domain_name, expression_name, params::Dict{String,<:Any})

Removes an Expression from the search domain. For more information, see Configuring
Expressions in the Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`:
- `expression_name`: The name of the Expression to delete.

"""
function delete_expression(
    DomainName, ExpressionName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DeleteExpression",
        Dict{String,Any}("DomainName" => DomainName, "ExpressionName" => ExpressionName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_expression(
    DomainName,
    ExpressionName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DeleteExpression",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "DomainName" => DomainName, "ExpressionName" => ExpressionName
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_index_field(domain_name, index_field_name)
    delete_index_field(domain_name, index_field_name, params::Dict{String,<:Any})

Removes an IndexField from the search domain. For more information, see Configuring Index
Fields in the Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`:
- `index_field_name`: The name of the index field your want to remove from the domain's
  indexing options.

"""
function delete_index_field(
    DomainName, IndexFieldName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DeleteIndexField",
        Dict{String,Any}("DomainName" => DomainName, "IndexFieldName" => IndexFieldName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_index_field(
    DomainName,
    IndexFieldName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DeleteIndexField",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "DomainName" => DomainName, "IndexFieldName" => IndexFieldName
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_suggester(domain_name, suggester_name)
    delete_suggester(domain_name, suggester_name, params::Dict{String,<:Any})

Deletes a suggester. For more information, see Getting Search Suggestions in the Amazon
CloudSearch Developer Guide.

# Arguments
- `domain_name`:
- `suggester_name`: Specifies the name of the suggester you want to delete.

"""
function delete_suggester(
    DomainName, SuggesterName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DeleteSuggester",
        Dict{String,Any}("DomainName" => DomainName, "SuggesterName" => SuggesterName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_suggester(
    DomainName,
    SuggesterName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DeleteSuggester",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "DomainName" => DomainName, "SuggesterName" => SuggesterName
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_analysis_schemes(domain_name)
    describe_analysis_schemes(domain_name, params::Dict{String,<:Any})

Gets the analysis schemes configured for a domain. An analysis scheme defines
language-specific text processing options for a text field. Can be limited to specific
analysis schemes by name. By default, shows all analysis schemes and includes any pending
changes to the configuration. Set the Deployed option to true to show the active
configuration and exclude pending changes. For more information, see Configuring Analysis
Schemes in the Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`: The name of the domain you want to describe.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AnalysisSchemeNames"`: The analysis schemes you want to describe.
- `"Deployed"`: Whether to display the deployed configuration (true) or include any pending
  changes (false). Defaults to false.
"""
function describe_analysis_schemes(
    DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DescribeAnalysisSchemes",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_analysis_schemes(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DescribeAnalysisSchemes",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_availability_options(domain_name)
    describe_availability_options(domain_name, params::Dict{String,<:Any})

Gets the availability options configured for a domain. By default, shows the configuration
with any pending changes. Set the Deployed option to true to show the active configuration
and exclude pending changes. For more information, see Configuring Availability Options in
the Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`: The name of the domain you want to describe.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Deployed"`: Whether to display the deployed configuration (true) or include any pending
  changes (false). Defaults to false.
"""
function describe_availability_options(
    DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DescribeAvailabilityOptions",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_availability_options(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DescribeAvailabilityOptions",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_domain_endpoint_options(domain_name)
    describe_domain_endpoint_options(domain_name, params::Dict{String,<:Any})

Returns the domain's endpoint options, specifically whether all requests to the domain must
arrive over HTTPS. For more information, see Configuring Domain Endpoint Options in the
Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`: A string that represents the name of a domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Deployed"`: Whether to retrieve the latest configuration (which might be in a
  Processing state) or the current, active configuration. Defaults to false.
"""
function describe_domain_endpoint_options(
    DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DescribeDomainEndpointOptions",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_domain_endpoint_options(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DescribeDomainEndpointOptions",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_domains()
    describe_domains(params::Dict{String,<:Any})

Gets information about the search domains owned by this account. Can be limited to specific
domains. Shows all domains by default. To get the number of searchable documents in a
domain, use the console or submit a matchall request to your domain's search endpoint:
q=matchall&amp;amp;q.parser=structured&amp;amp;size=0. For more information, see Getting
Information about a Search Domain in the Amazon CloudSearch Developer Guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DomainNames"`: The names of the domains you want to include in the response.
"""
function describe_domains(; aws_config::AbstractAWSConfig=global_aws_config())
    return cloudsearch(
        "DescribeDomains"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function describe_domains(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DescribeDomains", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    describe_expressions(domain_name)
    describe_expressions(domain_name, params::Dict{String,<:Any})

Gets the expressions configured for the search domain. Can be limited to specific
expressions by name. By default, shows all expressions and includes any pending changes to
the configuration. Set the Deployed option to true to show the active configuration and
exclude pending changes. For more information, see Configuring Expressions in the Amazon
CloudSearch Developer Guide.

# Arguments
- `domain_name`: The name of the domain you want to describe.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Deployed"`: Whether to display the deployed configuration (true) or include any pending
  changes (false). Defaults to false.
- `"ExpressionNames"`: Limits the DescribeExpressions response to the specified
  expressions. If not specified, all expressions are shown.
"""
function describe_expressions(DomainName; aws_config::AbstractAWSConfig=global_aws_config())
    return cloudsearch(
        "DescribeExpressions",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_expressions(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DescribeExpressions",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_index_fields(domain_name)
    describe_index_fields(domain_name, params::Dict{String,<:Any})

Gets information about the index fields configured for the search domain. Can be limited to
specific fields by name. By default, shows all fields and includes any pending changes to
the configuration. Set the Deployed option to true to show the active configuration and
exclude pending changes. For more information, see Getting Domain Information in the Amazon
CloudSearch Developer Guide.

# Arguments
- `domain_name`: The name of the domain you want to describe.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Deployed"`: Whether to display the deployed configuration (true) or include any pending
  changes (false). Defaults to false.
- `"FieldNames"`: A list of the index fields you want to describe. If not specified,
  information is returned for all configured index fields.
"""
function describe_index_fields(
    DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DescribeIndexFields",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_index_fields(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DescribeIndexFields",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_scaling_parameters(domain_name)
    describe_scaling_parameters(domain_name, params::Dict{String,<:Any})

Gets the scaling parameters configured for a domain. A domain's scaling parameters specify
the desired search instance type and replication count. For more information, see
Configuring Scaling Options in the Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`:

"""
function describe_scaling_parameters(
    DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DescribeScalingParameters",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_scaling_parameters(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DescribeScalingParameters",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_service_access_policies(domain_name)
    describe_service_access_policies(domain_name, params::Dict{String,<:Any})

Gets information about the access policies that control access to the domain's document and
search endpoints. By default, shows the configuration with any pending changes. Set the
Deployed option to true to show the active configuration and exclude pending changes. For
more information, see Configuring Access for a Search Domain in the Amazon CloudSearch
Developer Guide.

# Arguments
- `domain_name`: The name of the domain you want to describe.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Deployed"`: Whether to display the deployed configuration (true) or include any pending
  changes (false). Defaults to false.
"""
function describe_service_access_policies(
    DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "DescribeServiceAccessPolicies",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_service_access_policies(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DescribeServiceAccessPolicies",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_suggesters(domain_name)
    describe_suggesters(domain_name, params::Dict{String,<:Any})

Gets the suggesters configured for a domain. A suggester enables you to display possible
matches before users finish typing their queries. Can be limited to specific suggesters by
name. By default, shows all suggesters and includes any pending changes to the
configuration. Set the Deployed option to true to show the active configuration and exclude
pending changes. For more information, see Getting Search Suggestions in the Amazon
CloudSearch Developer Guide.

# Arguments
- `domain_name`: The name of the domain you want to describe.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Deployed"`: Whether to display the deployed configuration (true) or include any pending
  changes (false). Defaults to false.
- `"SuggesterNames"`: The suggesters you want to describe.
"""
function describe_suggesters(DomainName; aws_config::AbstractAWSConfig=global_aws_config())
    return cloudsearch(
        "DescribeSuggesters",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_suggesters(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "DescribeSuggesters",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    index_documents(domain_name)
    index_documents(domain_name, params::Dict{String,<:Any})

Tells the search domain to start indexing its documents using the latest indexing options.
This operation must be invoked to activate options whose OptionStatus is
RequiresIndexDocuments.

# Arguments
- `domain_name`:

"""
function index_documents(DomainName; aws_config::AbstractAWSConfig=global_aws_config())
    return cloudsearch(
        "IndexDocuments",
        Dict{String,Any}("DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function index_documents(
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "IndexDocuments",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("DomainName" => DomainName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_domain_names()
    list_domain_names(params::Dict{String,<:Any})

Lists all search domains owned by an account.

"""
function list_domain_names(; aws_config::AbstractAWSConfig=global_aws_config())
    return cloudsearch(
        "ListDomainNames"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_domain_names(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "ListDomainNames", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    update_availability_options(domain_name, multi_az)
    update_availability_options(domain_name, multi_az, params::Dict{String,<:Any})

Configures the availability options for a domain. Enabling the Multi-AZ option expands an
Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase
fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can
take about half an hour to become active. For more information, see Configuring
Availability Options in the Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`:
- `multi_az`: You expand an existing search domain to a second Availability Zone by setting
  the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade
  the domain to a single Availability Zone by setting the Multi-AZ option to false.

"""
function update_availability_options(
    DomainName, MultiAZ; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "UpdateAvailabilityOptions",
        Dict{String,Any}("DomainName" => DomainName, "MultiAZ" => MultiAZ);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_availability_options(
    DomainName,
    MultiAZ,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "UpdateAvailabilityOptions",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("DomainName" => DomainName, "MultiAZ" => MultiAZ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_domain_endpoint_options(domain_endpoint_options, domain_name)
    update_domain_endpoint_options(domain_endpoint_options, domain_name, params::Dict{String,<:Any})

Updates the domain's endpoint options, specifically whether all requests to the domain must
arrive over HTTPS. For more information, see Configuring Domain Endpoint Options in the
Amazon CloudSearch Developer Guide.

# Arguments
- `domain_endpoint_options`: Whether to require that all requests to the domain arrive over
  HTTPS. We recommend Policy-Min-TLS-1-2-2019-07 for TLSSecurityPolicy. For compatibility
  with older clients, the default is Policy-Min-TLS-1-0-2019-07.
- `domain_name`: A string that represents the name of a domain.

"""
function update_domain_endpoint_options(
    DomainEndpointOptions, DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "UpdateDomainEndpointOptions",
        Dict{String,Any}(
            "DomainEndpointOptions" => DomainEndpointOptions, "DomainName" => DomainName
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_domain_endpoint_options(
    DomainEndpointOptions,
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "UpdateDomainEndpointOptions",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "DomainEndpointOptions" => DomainEndpointOptions,
                    "DomainName" => DomainName,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_scaling_parameters(domain_name, scaling_parameters)
    update_scaling_parameters(domain_name, scaling_parameters, params::Dict{String,<:Any})

Configures scaling parameters for a domain. A domain's scaling parameters specify the
desired search instance type and replication count. Amazon CloudSearch will still
automatically scale your domain based on the volume of data and traffic, but not below the
desired instance type and replication count. If the Multi-AZ option is enabled, these
values control the resources used per Availability Zone. For more information, see
Configuring Scaling Options in the Amazon CloudSearch Developer Guide.

# Arguments
- `domain_name`:
- `scaling_parameters`:

"""
function update_scaling_parameters(
    DomainName, ScalingParameters; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "UpdateScalingParameters",
        Dict{String,Any}(
            "DomainName" => DomainName, "ScalingParameters" => ScalingParameters
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_scaling_parameters(
    DomainName,
    ScalingParameters,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "UpdateScalingParameters",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "DomainName" => DomainName, "ScalingParameters" => ScalingParameters
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_service_access_policies(access_policies, domain_name)
    update_service_access_policies(access_policies, domain_name, params::Dict{String,<:Any})

Configures the access rules that control access to the domain's document and search
endpoints. For more information, see  Configuring Access for an Amazon CloudSearch Domain.

# Arguments
- `access_policies`: The access rules you want to configure. These rules replace any
  existing rules.
- `domain_name`:

"""
function update_service_access_policies(
    AccessPolicies, DomainName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudsearch(
        "UpdateServiceAccessPolicies",
        Dict{String,Any}("AccessPolicies" => AccessPolicies, "DomainName" => DomainName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_service_access_policies(
    AccessPolicies,
    DomainName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudsearch(
        "UpdateServiceAccessPolicies",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AccessPolicies" => AccessPolicies, "DomainName" => DomainName
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

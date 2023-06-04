<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_compliance_by_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Indicates whether the specified Amazon Web Services resources are compliant

### Description

Indicates whether the specified Amazon Web Services resources are
compliant. If a resource is noncompliant, this action returns the number
of Config rules that the resource does not comply with.

A resource is compliant if it complies with all the Config rules that
evaluate it. It is noncompliant if it does not comply with one or more
of these rules.

If Config has no current evaluation results for the resource, it returns
`INSUFFICIENT_DATA`. This result might indicate one of the following
conditions about the rules that evaluate the resource:

-   Config has never invoked an evaluation for the rule. To check
    whether it has, use the `describe_config_rule_evaluation_status`
    action to get the `LastSuccessfulInvocationTime` and
    `LastFailedInvocationTime`.

-   The rule's Lambda function is failing to send evaluation results to
    Config. Verify that the role that you assigned to your configuration
    recorder includes the `config:PutEvaluations` permission. If the
    rule is a custom rule, verify that the Lambda execution role
    includes the `config:PutEvaluations` permission.

-   The rule's Lambda function has returned `NOT_APPLICABLE` for all
    evaluation results. This can occur if the resources were deleted or
    removed from the rule's scope.

### Usage

    configservice_describe_compliance_by_resource(ResourceType, ResourceId,
      ComplianceTypes, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_compliance_by_resource_:_ResourceType">ResourceType</code></td>
<td><p>The types of Amazon Web Services resources for which you want
compliance information (for example, <code
style="white-space: pre;">⁠AWS::EC2::Instance⁠</code>). For this action,
you can specify that the resource type is an Amazon Web Services account
by specifying <code
style="white-space: pre;">⁠AWS::::Account⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_compliance_by_resource_:_ResourceId">ResourceId</code></td>
<td><p>The ID of the Amazon Web Services resource for which you want
compliance information. You can specify only one resource ID. If you
specify a resource ID, you must also specify a type for
<code>ResourceType</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_compliance_by_resource_:_ComplianceTypes">ComplianceTypes</code></td>
<td><p>Filters the results by compliance.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_compliance_by_resource_:_Limit">Limit</code></td>
<td><p>The maximum number of evaluation results returned on each page.
The default is 10. You cannot specify a number greater than 100. If you
specify 0, Config uses the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_compliance_by_resource_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ComplianceByResources = list(
        list(
          ResourceType = "string",
          ResourceId = "string",
          Compliance = list(
            ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
            ComplianceContributorCount = list(
              CappedCount = 123,
              CapExceeded = TRUE|FALSE
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_compliance_by_resource(
      ResourceType = "string",
      ResourceId = "string",
      ComplianceTypes = list(
        "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA"
      ),
      Limit = 123,
      NextToken = "string"
    )

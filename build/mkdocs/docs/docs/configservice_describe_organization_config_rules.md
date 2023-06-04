<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_organization_config_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of organization Config rules

### Description

Returns a list of organization Config rules.

When you specify the limit and the next token, you receive a paginated
response.

Limit and next token are not applicable if you specify organization
Config rule names. It is only applicable, when you request all the
organization Config rules.

*For accounts within an organzation*

If you deploy an organizational rule or conformance pack in an
organization administrator account, and then establish a delegated
administrator and deploy an organizational rule or conformance pack in
the delegated administrator account, you won't be able to see the
organizational rule or conformance pack in the organization
administrator account from the delegated administrator account or see
the organizational rule or conformance pack in the delegated
administrator account from organization administrator account. The
`describe_organization_config_rules` and
`describe_organization_conformance_packs` APIs can only see and interact
with the organization-related resource that were deployed from within
the account calling those APIs.

### Usage

    configservice_describe_organization_config_rules(
      OrganizationConfigRuleNames, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_organization_config_rules_:_OrganizationConfigRuleNames">OrganizationConfigRuleNames</code></td>
<td><p>The names of organization Config rules for which you want
details. If you do not specify any names, Config returns details for all
your organization Config rules.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_organization_config_rules_:_Limit">Limit</code></td>
<td><p>The maximum number of organization Config rules returned on each
page. If you do no specify a number, Config uses the default. The
default is 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_organization_config_rules_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationConfigRules = list(
        list(
          OrganizationConfigRuleName = "string",
          OrganizationConfigRuleArn = "string",
          OrganizationManagedRuleMetadata = list(
            Description = "string",
            RuleIdentifier = "string",
            InputParameters = "string",
            MaximumExecutionFrequency = "One_Hour"|"Three_Hours"|"Six_Hours"|"Twelve_Hours"|"TwentyFour_Hours",
            ResourceTypesScope = list(
              "string"
            ),
            ResourceIdScope = "string",
            TagKeyScope = "string",
            TagValueScope = "string"
          ),
          OrganizationCustomRuleMetadata = list(
            Description = "string",
            LambdaFunctionArn = "string",
            OrganizationConfigRuleTriggerTypes = list(
              "ConfigurationItemChangeNotification"|"OversizedConfigurationItemChangeNotification"|"ScheduledNotification"
            ),
            InputParameters = "string",
            MaximumExecutionFrequency = "One_Hour"|"Three_Hours"|"Six_Hours"|"Twelve_Hours"|"TwentyFour_Hours",
            ResourceTypesScope = list(
              "string"
            ),
            ResourceIdScope = "string",
            TagKeyScope = "string",
            TagValueScope = "string"
          ),
          ExcludedAccounts = list(
            "string"
          ),
          LastUpdateTime = as.POSIXct(
            "2015-01-01"
          ),
          OrganizationCustomPolicyRuleMetadata = list(
            Description = "string",
            OrganizationConfigRuleTriggerTypes = list(
              "ConfigurationItemChangeNotification"|"OversizedConfigurationItemChangeNotification"
            ),
            InputParameters = "string",
            MaximumExecutionFrequency = "One_Hour"|"Three_Hours"|"Six_Hours"|"Twelve_Hours"|"TwentyFour_Hours",
            ResourceTypesScope = list(
              "string"
            ),
            ResourceIdScope = "string",
            TagKeyScope = "string",
            TagValueScope = "string",
            PolicyRuntime = "string",
            DebugLogDeliveryAccounts = list(
              "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_organization_config_rules(
      OrganizationConfigRuleNames = list(
        "string"
      ),
      Limit = 123,
      NextToken = "string"
    )

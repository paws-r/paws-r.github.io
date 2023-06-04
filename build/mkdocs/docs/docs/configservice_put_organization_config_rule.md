<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_organization_config_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates an Config rule for your entire organization to evaluate if your Amazon Web Services resources comply with your desired configurations

### Description

Adds or updates an Config rule for your entire organization to evaluate
if your Amazon Web Services resources comply with your desired
configurations. For information on how many organization Config rules
you can have per account, see [**Service
Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
in the *Config Developer Guide*.

Only a management account and a delegated administrator can create or
update an organization Config rule. When calling this API with a
delegated administrator, you must ensure Organizations
`ListDelegatedAdministrator` permissions are added. An organization can
have up to 3 delegated administrators.

This API enables organization service access through the
`EnableAWSServiceAccess` action and creates a service-linked role
`AWSServiceRoleForConfigMultiAccountSetup` in the management or
delegated administrator account of your organization. The service-linked
role is created only when the role does not exist in the caller account.
Config verifies the existence of role with `GetRole` action.

To use this API with delegated administrator, register a delegated
administrator by calling Amazon Web Services Organization
`register-delegated-administrator` for
`config-multiaccountsetup.amazonaws.com`.

There are two types of rules: *Config Managed Rules* and *Config Custom
Rules*. You can use `put_organization_config_rule` to create both Config
Managed Rules and Config Custom Rules.

Config Managed Rules are predefined, customizable rules created by
Config. For a list of managed rules, see [List of Config Managed
Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
If you are adding an Config managed rule, you must specify the rule's
identifier for the `RuleIdentifier` key.

Config Custom Rules are rules that you create from scratch. There are
two ways to create Config custom rules: with Lambda functions ( [Lambda
Developer
Guide](https://docs.aws.amazon.com/config/latest/developerguide/#gettingstarted-concepts-function))
and with Guard ([Guard GitHub
Repository](https://github.com/aws-cloudformation/cloudformation-guard)),
a policy-as-code language. Config custom rules created with Lambda are
called *Config Custom Lambda Rules* and Config custom rules created with
Guard are called *Config Custom Policy Rules*.

If you are adding a new Config Custom Lambda rule, you first need to
create an Lambda function in the management account or a delegated
administrator that the rule invokes to evaluate your resources. You also
need to create an IAM role in the managed account that can be assumed by
the Lambda function. When you use `put_organization_config_rule` to add
a Custom Lambda rule to Config, you must specify the Amazon Resource
Name (ARN) that Lambda assigns to the function.

Prerequisite: Ensure you call `EnableAllFeatures` API to enable all
features in an organization.

Make sure to specify one of either
`OrganizationCustomPolicyRuleMetadata` for Custom Policy rules,
`OrganizationCustomRuleMetadata` for Custom Lambda rules, or
`OrganizationManagedRuleMetadata` for managed rules.

### Usage

    configservice_put_organization_config_rule(OrganizationConfigRuleName,
      OrganizationManagedRuleMetadata, OrganizationCustomRuleMetadata,
      ExcludedAccounts, OrganizationCustomPolicyRuleMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_organization_config_rule_:_OrganizationConfigRuleName">OrganizationConfigRuleName</code></td>
<td><p>[required] The name that you assign to an organization Config
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_organization_config_rule_:_OrganizationManagedRuleMetadata">OrganizationManagedRuleMetadata</code></td>
<td><p>An <code>OrganizationManagedRuleMetadata</code> object. This
object specifies organization managed rule metadata such as resource
type and ID of Amazon Web Services resource along with the rule
identifier. It also provides the frequency with which you want Config to
run evaluations for the rule if the trigger type is periodic.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_organization_config_rule_:_OrganizationCustomRuleMetadata">OrganizationCustomRuleMetadata</code></td>
<td><p>An <code>OrganizationCustomRuleMetadata</code> object. This
object specifies organization custom rule metadata such as resource
type, resource ID of Amazon Web Services resource, Lambda function ARN,
and organization trigger types that trigger Config to evaluate your
Amazon Web Services resources against a rule. It also provides the
frequency with which you want Config to run evaluations for the rule if
the trigger type is periodic.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_organization_config_rule_:_ExcludedAccounts">ExcludedAccounts</code></td>
<td><p>A comma-separated list of accounts that you want to exclude from
an organization Config rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_organization_config_rule_:_OrganizationCustomPolicyRuleMetadata">OrganizationCustomPolicyRuleMetadata</code></td>
<td><p>An <code>OrganizationCustomPolicyRuleMetadata</code> object. This
object specifies metadata for your organization's Config Custom Policy
rule. The metadata includes the runtime system in use, which accounts
have debug logging enabled, and other custom rule metadata, such as
resource type, resource ID of Amazon Web Services resource, and
organization trigger types that initiate Config to evaluate Amazon Web
Services resources against a rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationConfigRuleArn = "string"
    )

### Request syntax

    svc$put_organization_config_rule(
      OrganizationConfigRuleName = "string",
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
        PolicyText = "string",
        DebugLogDeliveryAccounts = list(
          "string"
        )
      )
    )

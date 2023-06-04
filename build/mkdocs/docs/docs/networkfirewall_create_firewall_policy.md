<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_create_firewall_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the firewall policy for the firewall according to the specifications

### Description

Creates the firewall policy for the firewall according to the
specifications.

An Network Firewall firewall policy defines the behavior of a firewall,
in a collection of stateless and stateful rule groups and other
settings. You can use one firewall policy for multiple firewalls.

### Usage

    networkfirewall_create_firewall_policy(FirewallPolicyName,
      FirewallPolicy, Description, Tags, DryRun, EncryptionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_create_firewall_policy_:_FirewallPolicyName">FirewallPolicyName</code></td>
<td><p>[required] The descriptive name of the firewall policy. You can't
change the name of a firewall policy after you create it.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_firewall_policy_:_FirewallPolicy">FirewallPolicy</code></td>
<td><p>[required] The rule groups and policy actions to use in the
firewall policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_create_firewall_policy_:_Description">Description</code></td>
<td><p>A description of the firewall policy.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_firewall_policy_:_Tags">Tags</code></td>
<td><p>The key:value pairs to associate with the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_create_firewall_policy_:_DryRun">DryRun</code></td>
<td><p>Indicates whether you want Network Firewall to just check the
validity of the request, rather than run the request.</p>
<p>If set to <code>TRUE</code>, Network Firewall checks whether the
request can run successfully, but doesn't actually make the requested
changes. The call returns the value that the request would return if you
ran it with dry run set to <code>FALSE</code>, but doesn't make
additions or changes to your resources. This option allows you to make
sure that you have the required permissions to run the request and that
your request parameters are valid.</p>
<p>If set to <code>FALSE</code>, Network Firewall makes the requested
changes to your resources.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_firewall_policy_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
<td><p>A complex type that contains settings for encryption of your
firewall policy resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpdateToken = "string",
      FirewallPolicyResponse = list(
        FirewallPolicyName = "string",
        FirewallPolicyArn = "string",
        FirewallPolicyId = "string",
        Description = "string",
        FirewallPolicyStatus = "ACTIVE"|"DELETING",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ConsumedStatelessRuleCapacity = 123,
        ConsumedStatefulRuleCapacity = 123,
        NumberOfAssociations = 123,
        EncryptionConfiguration = list(
          KeyId = "string",
          Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_firewall_policy(
      FirewallPolicyName = "string",
      FirewallPolicy = list(
        StatelessRuleGroupReferences = list(
          list(
            ResourceArn = "string",
            Priority = 123
          )
        ),
        StatelessDefaultActions = list(
          "string"
        ),
        StatelessFragmentDefaultActions = list(
          "string"
        ),
        StatelessCustomActions = list(
          list(
            ActionName = "string",
            ActionDefinition = list(
              PublishMetricAction = list(
                Dimensions = list(
                  list(
                    Value = "string"
                  )
                )
              )
            )
          )
        ),
        StatefulRuleGroupReferences = list(
          list(
            ResourceArn = "string",
            Priority = 123,
            Override = list(
              Action = "DROP_TO_ALERT"
            )
          )
        ),
        StatefulDefaultActions = list(
          "string"
        ),
        StatefulEngineOptions = list(
          RuleOrder = "DEFAULT_ACTION_ORDER"|"STRICT_ORDER",
          StreamExceptionPolicy = "DROP"|"CONTINUE"|"REJECT"
        ),
        TLSInspectionConfigurationArn = "string",
        PolicyVariables = list(
          RuleVariables = list(
            list(
              Definition = list(
                "string"
              )
            )
          )
        )
      ),
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DryRun = TRUE|FALSE,
      EncryptionConfiguration = list(
        KeyId = "string",
        Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
      )
    )

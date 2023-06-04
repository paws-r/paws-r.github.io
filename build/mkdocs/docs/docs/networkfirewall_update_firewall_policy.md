<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_update_firewall_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the properties of the specified firewall policy

### Description

Updates the properties of the specified firewall policy.

### Usage

    networkfirewall_update_firewall_policy(UpdateToken, FirewallPolicyArn,
      FirewallPolicyName, FirewallPolicy, Description, DryRun,
      EncryptionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_update_firewall_policy_:_UpdateToken">UpdateToken</code></td>
<td><p>[required] A token used for optimistic locking. Network Firewall
returns a token to your requests that access the firewall policy. The
token marks the state of the policy resource at the time of the
request.</p>
<p>To make changes to the policy, you provide the token in your request.
Network Firewall uses the token to ensure that the policy hasn't changed
since you last retrieved it. If it has changed, the operation fails with
an <code>InvalidTokenException</code>. If this happens, retrieve the
firewall policy again to get a current copy of it with current token.
Reapply your changes as needed, then try the operation again using the
new token.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_firewall_policy_:_FirewallPolicyArn">FirewallPolicyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the firewall policy.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_update_firewall_policy_:_FirewallPolicyName">FirewallPolicyName</code></td>
<td><p>The descriptive name of the firewall policy. You can't change the
name of a firewall policy after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_firewall_policy_:_FirewallPolicy">FirewallPolicy</code></td>
<td><p>[required] The updated firewall policy to use for the
firewall.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_update_firewall_policy_:_Description">Description</code></td>
<td><p>A description of the firewall policy.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_firewall_policy_:_DryRun">DryRun</code></td>
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
<tr class="odd">
<td><code
id="networkfirewall_update_firewall_policy_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
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

    svc$update_firewall_policy(
      UpdateToken = "string",
      FirewallPolicyArn = "string",
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
      DryRun = TRUE|FALSE,
      EncryptionConfiguration = list(
        KeyId = "string",
        Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
      )
    )

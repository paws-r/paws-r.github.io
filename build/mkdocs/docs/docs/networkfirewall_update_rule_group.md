<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_update_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the rule settings for the specified rule group

### Description

Updates the rule settings for the specified rule group. You use a rule
group by reference in one or more firewall policies. When you modify a
rule group, you modify all firewall policies that use the rule group.

To update a rule group, first call `describe_rule_group` to retrieve the
current RuleGroup object, update the object as needed, and then provide
the updated object to this call.

### Usage

    networkfirewall_update_rule_group(UpdateToken, RuleGroupArn,
      RuleGroupName, RuleGroup, Rules, Type, Description, DryRun,
      EncryptionConfiguration, SourceMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_update_rule_group_:_UpdateToken">UpdateToken</code></td>
<td><p>[required] A token used for optimistic locking. Network Firewall
returns a token to your requests that access the rule group. The token
marks the state of the rule group resource at the time of the
request.</p>
<p>To make changes to the rule group, you provide the token in your
request. Network Firewall uses the token to ensure that the rule group
hasn't changed since you last retrieved it. If it has changed, the
operation fails with an <code>InvalidTokenException</code>. If this
happens, retrieve the rule group again to get a current copy of it with
a current token. Reapply your changes as needed, then try the operation
again using the new token.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_rule_group_:_RuleGroupArn">RuleGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the rule group.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_update_rule_group_:_RuleGroupName">RuleGroupName</code></td>
<td><p>The descriptive name of the rule group. You can't change the name
of a rule group after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_rule_group_:_RuleGroup">RuleGroup</code></td>
<td><p>An object that defines the rule group rules.</p>
<p>You must provide either this rule group setting or a
<code>Rules</code> setting, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_update_rule_group_:_Rules">Rules</code></td>
<td><p>A string containing stateful rule group rules specifications in
Suricata flat format, with one rule per line. Use this to import your
existing Suricata compatible rule groups.</p>
<p>You must provide either this rules setting or a populated
<code>RuleGroup</code> setting, but not both.</p>
<p>You can provide your rule group specification in Suricata flat format
through this setting when you create or update your rule group. The call
response returns a RuleGroup object that Network Firewall has populated
from your string.</p></td>
</tr>
<tr class="even">
<td><code id="networkfirewall_update_rule_group_:_Type">Type</code></td>
<td><p>Indicates whether the rule group is stateless or stateful. If the
rule group is stateless, it contains stateless rules. If it is stateful,
it contains stateful rules.</p>
<p>This setting is required for requests that do not include the
<code>RuleGroupARN</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_update_rule_group_:_Description">Description</code></td>
<td><p>A description of the rule group.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_rule_group_:_DryRun">DryRun</code></td>
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
id="networkfirewall_update_rule_group_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
<td><p>A complex type that contains settings for encryption of your rule
group resources.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_rule_group_:_SourceMetadata">SourceMetadata</code></td>
<td><p>A complex type that contains metadata about the rule group that
your own rule group is copied from. You can use the metadata to keep
track of updates made to the originating rule group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpdateToken = "string",
      RuleGroupResponse = list(
        RuleGroupArn = "string",
        RuleGroupName = "string",
        RuleGroupId = "string",
        Description = "string",
        Type = "STATELESS"|"STATEFUL",
        Capacity = 123,
        RuleGroupStatus = "ACTIVE"|"DELETING",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ConsumedCapacity = 123,
        NumberOfAssociations = 123,
        EncryptionConfiguration = list(
          KeyId = "string",
          Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
        ),
        SourceMetadata = list(
          SourceArn = "string",
          SourceUpdateToken = "string"
        ),
        SnsTopic = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$update_rule_group(
      UpdateToken = "string",
      RuleGroupArn = "string",
      RuleGroupName = "string",
      RuleGroup = list(
        RuleVariables = list(
          IPSets = list(
            list(
              Definition = list(
                "string"
              )
            )
          ),
          PortSets = list(
            list(
              Definition = list(
                "string"
              )
            )
          )
        ),
        ReferenceSets = list(
          IPSetReferences = list(
            list(
              ReferenceArn = "string"
            )
          )
        ),
        RulesSource = list(
          RulesString = "string",
          RulesSourceList = list(
            Targets = list(
              "string"
            ),
            TargetTypes = list(
              "TLS_SNI"|"HTTP_HOST"
            ),
            GeneratedRulesType = "ALLOWLIST"|"DENYLIST"
          ),
          StatefulRules = list(
            list(
              Action = "PASS"|"DROP"|"ALERT"|"REJECT",
              Header = list(
                Protocol = "IP"|"TCP"|"UDP"|"ICMP"|"HTTP"|"FTP"|"TLS"|"SMB"|"DNS"|"DCERPC"|"SSH"|"SMTP"|"IMAP"|"MSN"|"KRB5"|"IKEV2"|"TFTP"|"NTP"|"DHCP",
                Source = "string",
                SourcePort = "string",
                Direction = "FORWARD"|"ANY",
                Destination = "string",
                DestinationPort = "string"
              ),
              RuleOptions = list(
                list(
                  Keyword = "string",
                  Settings = list(
                    "string"
                  )
                )
              )
            )
          ),
          StatelessRulesAndCustomActions = list(
            StatelessRules = list(
              list(
                RuleDefinition = list(
                  MatchAttributes = list(
                    Sources = list(
                      list(
                        AddressDefinition = "string"
                      )
                    ),
                    Destinations = list(
                      list(
                        AddressDefinition = "string"
                      )
                    ),
                    SourcePorts = list(
                      list(
                        FromPort = 123,
                        ToPort = 123
                      )
                    ),
                    DestinationPorts = list(
                      list(
                        FromPort = 123,
                        ToPort = 123
                      )
                    ),
                    Protocols = list(
                      123
                    ),
                    TCPFlags = list(
                      list(
                        Flags = list(
                          "FIN"|"SYN"|"RST"|"PSH"|"ACK"|"URG"|"ECE"|"CWR"
                        ),
                        Masks = list(
                          "FIN"|"SYN"|"RST"|"PSH"|"ACK"|"URG"|"ECE"|"CWR"
                        )
                      )
                    )
                  ),
                  Actions = list(
                    "string"
                  )
                ),
                Priority = 123
              )
            ),
            CustomActions = list(
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
            )
          )
        ),
        StatefulRuleOptions = list(
          RuleOrder = "DEFAULT_ACTION_ORDER"|"STRICT_ORDER"
        )
      ),
      Rules = "string",
      Type = "STATELESS"|"STATEFUL",
      Description = "string",
      DryRun = TRUE|FALSE,
      EncryptionConfiguration = list(
        KeyId = "string",
        Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
      ),
      SourceMetadata = list(
        SourceArn = "string",
        SourceUpdateToken = "string"
      )
    )

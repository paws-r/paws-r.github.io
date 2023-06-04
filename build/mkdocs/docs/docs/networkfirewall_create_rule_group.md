<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_create_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the specified stateless or stateful rule group, which includes the rules for network traffic inspection, a capacity setting, and tags

### Description

Creates the specified stateless or stateful rule group, which includes
the rules for network traffic inspection, a capacity setting, and tags.

You provide your rule group specification in your request using either
`RuleGroup` or `Rules`.

### Usage

    networkfirewall_create_rule_group(RuleGroupName, RuleGroup, Rules, Type,
      Description, Capacity, Tags, DryRun, EncryptionConfiguration,
      SourceMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_create_rule_group_:_RuleGroupName">RuleGroupName</code></td>
<td><p>[required] The descriptive name of the rule group. You can't
change the name of a rule group after you create it.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_rule_group_:_RuleGroup">RuleGroup</code></td>
<td><p>An object that defines the rule group rules.</p>
<p>You must provide either this rule group setting or a
<code>Rules</code> setting, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_create_rule_group_:_Rules">Rules</code></td>
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
<td><code id="networkfirewall_create_rule_group_:_Type">Type</code></td>
<td><p>[required] Indicates whether the rule group is stateless or
stateful. If the rule group is stateless, it contains stateless rules.
If it is stateful, it contains stateful rules.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_create_rule_group_:_Description">Description</code></td>
<td><p>A description of the rule group.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_rule_group_:_Capacity">Capacity</code></td>
<td><p>[required] The maximum operating resources that this rule group
can use. Rule group capacity is fixed at creation. When you update a
rule group, you are limited to this capacity. When you reference a rule
group from a firewall policy, Network Firewall reserves this capacity
for the rule group.</p>
<p>You can retrieve the capacity that would be required for a rule group
before you create the rule group by calling
<code>create_rule_group</code> with <code>DryRun</code> set to
<code>TRUE</code>.</p>
<p>You can't change or exceed this capacity when you update the rule
group, so leave room for your rule group to grow.</p>
<p><strong>Capacity for a stateless rule group</strong></p>
<p>For a stateless rule group, the capacity required is the sum of the
capacity requirements of the individual rules that you expect to have in
the rule group.</p>
<p>To calculate the capacity requirement of a single rule, multiply the
capacity requirement values of each of the rule's match settings:</p>
<ul>
<li><p>A match setting with no criteria specified has a value of
1.</p></li>
<li><p>A match setting with <code>Any</code> specified has a value of
1.</p></li>
<li><p>All other match settings have a value equal to the number of
elements provided in the setting. For example, a protocol setting
["UDP"] and a source setting ["10.0.0.0/24"] each have a value of 1. A
protocol setting ["UDP","TCP"] has a value of 2. A source setting
["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"] has a value of 3.</p></li>
</ul>
<p>A rule with no criteria specified in any of its match settings has a
capacity requirement of 1. A rule with protocol setting ["UDP","TCP"],
source setting ["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"], and a single
specification or no specification for each of the other match settings
has a capacity requirement of 6.</p>
<p><strong>Capacity for a stateful rule group</strong></p>
<p>For a stateful rule group, the minimum capacity required is the
number of individual rules that you expect to have in the rule
group.</p></td>
</tr>
<tr class="odd">
<td><code id="networkfirewall_create_rule_group_:_Tags">Tags</code></td>
<td><p>The key:value pairs to associate with the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_rule_group_:_DryRun">DryRun</code></td>
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
id="networkfirewall_create_rule_group_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
<td><p>A complex type that contains settings for encryption of your rule
group resources.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_rule_group_:_SourceMetadata">SourceMetadata</code></td>
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

    svc$create_rule_group(
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
      Capacity = 123,
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
      ),
      SourceMetadata = list(
        SourceArn = "string",
        SourceUpdateToken = "string"
      )
    )

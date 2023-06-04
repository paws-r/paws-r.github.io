<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_describe_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the data objects for the specified rule group

### Description

Returns the data objects for the specified rule group.

### Usage

    networkfirewall_describe_rule_group(RuleGroupName, RuleGroupArn, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_describe_rule_group_:_RuleGroupName">RuleGroupName</code></td>
<td><p>The descriptive name of the rule group. You can't change the name
of a rule group after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_describe_rule_group_:_RuleGroupArn">RuleGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the rule group.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_describe_rule_group_:_Type">Type</code></td>
<td><p>Indicates whether the rule group is stateless or stateful. If the
rule group is stateless, it contains stateless rules. If it is stateful,
it contains stateful rules.</p>
<p>This setting is required for requests that do not include the
<code>RuleGroupARN</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpdateToken = "string",
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

    svc$describe_rule_group(
      RuleGroupName = "string",
      RuleGroupArn = "string",
      Type = "STATELESS"|"STATEFUL"
    )

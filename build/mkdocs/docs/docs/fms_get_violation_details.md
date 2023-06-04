<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_violation_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account

### Description

Retrieves violations for a resource based on the specified Firewall
Manager policy and Amazon Web Services account.

### Usage

    fms_get_violation_details(PolicyId, MemberAccount, ResourceId,
      ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_get_violation_details_:_PolicyId">PolicyId</code></td>
<td><p>[required] The ID of the Firewall Manager policy that you want
the details for. This currently only supports security group content
audit policies.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_get_violation_details_:_MemberAccount">MemberAccount</code></td>
<td><p>[required] The Amazon Web Services account ID that you want the
details for.</p></td>
</tr>
<tr class="odd">
<td><code
id="fms_get_violation_details_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource that has violations.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_get_violation_details_:_ResourceType">ResourceType</code></td>
<td><p>[required] The resource type. This is in the format shown in the
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon
Web Services Resource Types Reference</a>. Supported resource types are:
<code style="white-space: pre;">⁠AWS::EC2::Instance⁠</code>, <code
style="white-space: pre;">⁠AWS::EC2::NetworkInterface⁠</code>, <code
style="white-space: pre;">⁠AWS::EC2::SecurityGroup⁠</code>, <code
style="white-space: pre;">⁠AWS::NetworkFirewall::FirewallPolicy⁠</code>,
and <code style="white-space: pre;">⁠AWS::EC2::Subnet⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ViolationDetail = list(
        PolicyId = "string",
        MemberAccount = "string",
        ResourceId = "string",
        ResourceType = "string",
        ResourceViolations = list(
          list(
            AwsVPCSecurityGroupViolation = list(
              ViolationTarget = "string",
              ViolationTargetDescription = "string",
              PartialMatches = list(
                list(
                  Reference = "string",
                  TargetViolationReasons = list(
                    "string"
                  )
                )
              ),
              PossibleSecurityGroupRemediationActions = list(
                list(
                  RemediationActionType = "REMOVE"|"MODIFY",
                  Description = "string",
                  RemediationResult = list(
                    IPV4Range = "string",
                    IPV6Range = "string",
                    PrefixListId = "string",
                    Protocol = "string",
                    FromPort = 123,
                    ToPort = 123
                  ),
                  IsDefaultAction = TRUE|FALSE
                )
              )
            ),
            AwsEc2NetworkInterfaceViolation = list(
              ViolationTarget = "string",
              ViolatingSecurityGroups = list(
                "string"
              )
            ),
            AwsEc2InstanceViolation = list(
              ViolationTarget = "string",
              AwsEc2NetworkInterfaceViolations = list(
                list(
                  ViolationTarget = "string",
                  ViolatingSecurityGroups = list(
                    "string"
                  )
                )
              )
            ),
            NetworkFirewallMissingFirewallViolation = list(
              ViolationTarget = "string",
              VPC = "string",
              AvailabilityZone = "string",
              TargetViolationReason = "string"
            ),
            NetworkFirewallMissingSubnetViolation = list(
              ViolationTarget = "string",
              VPC = "string",
              AvailabilityZone = "string",
              TargetViolationReason = "string"
            ),
            NetworkFirewallMissingExpectedRTViolation = list(
              ViolationTarget = "string",
              VPC = "string",
              AvailabilityZone = "string",
              CurrentRouteTable = "string",
              ExpectedRouteTable = "string"
            ),
            NetworkFirewallPolicyModifiedViolation = list(
              ViolationTarget = "string",
              CurrentPolicyDescription = list(
                StatelessRuleGroups = list(
                  list(
                    RuleGroupName = "string",
                    ResourceId = "string",
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
                  "string"
                ),
                StatefulRuleGroups = list(
                  list(
                    RuleGroupName = "string",
                    ResourceId = "string",
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
                  RuleOrder = "STRICT_ORDER"|"DEFAULT_ACTION_ORDER"
                )
              ),
              ExpectedPolicyDescription = list(
                StatelessRuleGroups = list(
                  list(
                    RuleGroupName = "string",
                    ResourceId = "string",
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
                  "string"
                ),
                StatefulRuleGroups = list(
                  list(
                    RuleGroupName = "string",
                    ResourceId = "string",
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
                  RuleOrder = "STRICT_ORDER"|"DEFAULT_ACTION_ORDER"
                )
              )
            ),
            NetworkFirewallInternetTrafficNotInspectedViolation = list(
              SubnetId = "string",
              SubnetAvailabilityZone = "string",
              RouteTableId = "string",
              ViolatingRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              IsRouteTableUsedInDifferentAZ = TRUE|FALSE,
              CurrentFirewallSubnetRouteTable = "string",
              ExpectedFirewallEndpoint = "string",
              FirewallSubnetId = "string",
              ExpectedFirewallSubnetRoutes = list(
                list(
                  IpV4Cidr = "string",
                  PrefixListId = "string",
                  IpV6Cidr = "string",
                  ContributingSubnets = list(
                    "string"
                  ),
                  AllowedTargets = list(
                    "string"
                  ),
                  RouteTableId = "string"
                )
              ),
              ActualFirewallSubnetRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              InternetGatewayId = "string",
              CurrentInternetGatewayRouteTable = "string",
              ExpectedInternetGatewayRoutes = list(
                list(
                  IpV4Cidr = "string",
                  PrefixListId = "string",
                  IpV6Cidr = "string",
                  ContributingSubnets = list(
                    "string"
                  ),
                  AllowedTargets = list(
                    "string"
                  ),
                  RouteTableId = "string"
                )
              ),
              ActualInternetGatewayRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              VpcId = "string"
            ),
            NetworkFirewallInvalidRouteConfigurationViolation = list(
              AffectedSubnets = list(
                "string"
              ),
              RouteTableId = "string",
              IsRouteTableUsedInDifferentAZ = TRUE|FALSE,
              ViolatingRoute = list(
                DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                Destination = "string",
                Target = "string"
              ),
              CurrentFirewallSubnetRouteTable = "string",
              ExpectedFirewallEndpoint = "string",
              ActualFirewallEndpoint = "string",
              ExpectedFirewallSubnetId = "string",
              ActualFirewallSubnetId = "string",
              ExpectedFirewallSubnetRoutes = list(
                list(
                  IpV4Cidr = "string",
                  PrefixListId = "string",
                  IpV6Cidr = "string",
                  ContributingSubnets = list(
                    "string"
                  ),
                  AllowedTargets = list(
                    "string"
                  ),
                  RouteTableId = "string"
                )
              ),
              ActualFirewallSubnetRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              InternetGatewayId = "string",
              CurrentInternetGatewayRouteTable = "string",
              ExpectedInternetGatewayRoutes = list(
                list(
                  IpV4Cidr = "string",
                  PrefixListId = "string",
                  IpV6Cidr = "string",
                  ContributingSubnets = list(
                    "string"
                  ),
                  AllowedTargets = list(
                    "string"
                  ),
                  RouteTableId = "string"
                )
              ),
              ActualInternetGatewayRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              VpcId = "string"
            ),
            NetworkFirewallBlackHoleRouteDetectedViolation = list(
              ViolationTarget = "string",
              RouteTableId = "string",
              VpcId = "string",
              ViolatingRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              )
            ),
            NetworkFirewallUnexpectedFirewallRoutesViolation = list(
              FirewallSubnetId = "string",
              ViolatingRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              RouteTableId = "string",
              FirewallEndpoint = "string",
              VpcId = "string"
            ),
            NetworkFirewallUnexpectedGatewayRoutesViolation = list(
              GatewayId = "string",
              ViolatingRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              RouteTableId = "string",
              VpcId = "string"
            ),
            NetworkFirewallMissingExpectedRoutesViolation = list(
              ViolationTarget = "string",
              ExpectedRoutes = list(
                list(
                  IpV4Cidr = "string",
                  PrefixListId = "string",
                  IpV6Cidr = "string",
                  ContributingSubnets = list(
                    "string"
                  ),
                  AllowedTargets = list(
                    "string"
                  ),
                  RouteTableId = "string"
                )
              ),
              VpcId = "string"
            ),
            DnsRuleGroupPriorityConflictViolation = list(
              ViolationTarget = "string",
              ViolationTargetDescription = "string",
              ConflictingPriority = 123,
              ConflictingPolicyId = "string",
              UnavailablePriorities = list(
                123
              )
            ),
            DnsDuplicateRuleGroupViolation = list(
              ViolationTarget = "string",
              ViolationTargetDescription = "string"
            ),
            DnsRuleGroupLimitExceededViolation = list(
              ViolationTarget = "string",
              ViolationTargetDescription = "string",
              NumberOfRuleGroupsAlreadyAssociated = 123
            ),
            PossibleRemediationActions = list(
              Description = "string",
              Actions = list(
                list(
                  Description = "string",
                  OrderedRemediationActions = list(
                    list(
                      RemediationAction = list(
                        Description = "string",
                        EC2CreateRouteAction = list(
                          Description = "string",
                          DestinationCidrBlock = "string",
                          DestinationPrefixListId = "string",
                          DestinationIpv6CidrBlock = "string",
                          VpcEndpointId = list(
                            ResourceId = "string",
                            Description = "string"
                          ),
                          GatewayId = list(
                            ResourceId = "string",
                            Description = "string"
                          ),
                          RouteTableId = list(
                            ResourceId = "string",
                            Description = "string"
                          )
                        ),
                        EC2ReplaceRouteAction = list(
                          Description = "string",
                          DestinationCidrBlock = "string",
                          DestinationPrefixListId = "string",
                          DestinationIpv6CidrBlock = "string",
                          GatewayId = list(
                            ResourceId = "string",
                            Description = "string"
                          ),
                          RouteTableId = list(
                            ResourceId = "string",
                            Description = "string"
                          )
                        ),
                        EC2DeleteRouteAction = list(
                          Description = "string",
                          DestinationCidrBlock = "string",
                          DestinationPrefixListId = "string",
                          DestinationIpv6CidrBlock = "string",
                          RouteTableId = list(
                            ResourceId = "string",
                            Description = "string"
                          )
                        ),
                        EC2CopyRouteTableAction = list(
                          Description = "string",
                          VpcId = list(
                            ResourceId = "string",
                            Description = "string"
                          ),
                          RouteTableId = list(
                            ResourceId = "string",
                            Description = "string"
                          )
                        ),
                        EC2ReplaceRouteTableAssociationAction = list(
                          Description = "string",
                          AssociationId = list(
                            ResourceId = "string",
                            Description = "string"
                          ),
                          RouteTableId = list(
                            ResourceId = "string",
                            Description = "string"
                          )
                        ),
                        EC2AssociateRouteTableAction = list(
                          Description = "string",
                          RouteTableId = list(
                            ResourceId = "string",
                            Description = "string"
                          ),
                          SubnetId = list(
                            ResourceId = "string",
                            Description = "string"
                          ),
                          GatewayId = list(
                            ResourceId = "string",
                            Description = "string"
                          )
                        ),
                        EC2CreateRouteTableAction = list(
                          Description = "string",
                          VpcId = list(
                            ResourceId = "string",
                            Description = "string"
                          )
                        ),
                        FMSPolicyUpdateFirewallCreationConfigAction = list(
                          Description = "string",
                          FirewallCreationConfig = "string"
                        )
                      ),
                      Order = 123
                    )
                  ),
                  IsDefaultAction = TRUE|FALSE
                )
              )
            ),
            FirewallSubnetIsOutOfScopeViolation = list(
              FirewallSubnetId = "string",
              VpcId = "string",
              SubnetAvailabilityZone = "string",
              SubnetAvailabilityZoneId = "string",
              VpcEndpointId = "string"
            ),
            RouteHasOutOfScopeEndpointViolation = list(
              SubnetId = "string",
              VpcId = "string",
              RouteTableId = "string",
              ViolatingRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              SubnetAvailabilityZone = "string",
              SubnetAvailabilityZoneId = "string",
              CurrentFirewallSubnetRouteTable = "string",
              FirewallSubnetId = "string",
              FirewallSubnetRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              ),
              InternetGatewayId = "string",
              CurrentInternetGatewayRouteTable = "string",
              InternetGatewayRoutes = list(
                list(
                  DestinationType = "IPV4"|"IPV6"|"PREFIX_LIST",
                  TargetType = "GATEWAY"|"CARRIER_GATEWAY"|"INSTANCE"|"LOCAL_GATEWAY"|"NAT_GATEWAY"|"NETWORK_INTERFACE"|"VPC_ENDPOINT"|"VPC_PEERING_CONNECTION"|"EGRESS_ONLY_INTERNET_GATEWAY"|"TRANSIT_GATEWAY",
                  Destination = "string",
                  Target = "string"
                )
              )
            ),
            ThirdPartyFirewallMissingFirewallViolation = list(
              ViolationTarget = "string",
              VPC = "string",
              AvailabilityZone = "string",
              TargetViolationReason = "string"
            ),
            ThirdPartyFirewallMissingSubnetViolation = list(
              ViolationTarget = "string",
              VPC = "string",
              AvailabilityZone = "string",
              TargetViolationReason = "string"
            ),
            ThirdPartyFirewallMissingExpectedRouteTableViolation = list(
              ViolationTarget = "string",
              VPC = "string",
              AvailabilityZone = "string",
              CurrentRouteTable = "string",
              ExpectedRouteTable = "string"
            ),
            FirewallSubnetMissingVPCEndpointViolation = list(
              FirewallSubnetId = "string",
              VpcId = "string",
              SubnetAvailabilityZone = "string",
              SubnetAvailabilityZoneId = "string"
            )
          )
        ),
        ResourceTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ResourceDescription = "string"
      )
    )

### Request syntax

    svc$get_violation_details(
      PolicyId = "string",
      MemberAccount = "string",
      ResourceId = "string",
      ResourceType = "string"
    )

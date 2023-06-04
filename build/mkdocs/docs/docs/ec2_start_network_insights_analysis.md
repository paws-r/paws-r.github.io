<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_start_network_insights_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts analyzing the specified path

### Description

Starts analyzing the specified path. If the path is reachable, the
operation returns the shortest feasible path.

### Usage

    ec2_start_network_insights_analysis(NetworkInsightsPathId,
      AdditionalAccounts, FilterInArns, DryRun, TagSpecifications,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_start_network_insights_analysis_:_NetworkInsightsPathId">NetworkInsightsPathId</code></td>
<td><p>[required] The ID of the path.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_start_network_insights_analysis_:_AdditionalAccounts">AdditionalAccounts</code></td>
<td><p>The member accounts that contain resources that the path can
traverse.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_start_network_insights_analysis_:_FilterInArns">FilterInArns</code></td>
<td><p>The Amazon Resource Names (ARN) of the resources that the path
must traverse.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_start_network_insights_analysis_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_start_network_insights_analysis_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_start_network_insights_analysis_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInsightsAnalysis = list(
        NetworkInsightsAnalysisId = "string",
        NetworkInsightsAnalysisArn = "string",
        NetworkInsightsPathId = "string",
        AdditionalAccounts = list(
          "string"
        ),
        FilterInArns = list(
          "string"
        ),
        StartDate = as.POSIXct(
          "2015-01-01"
        ),
        Status = "running"|"succeeded"|"failed",
        StatusMessage = "string",
        WarningMessage = "string",
        NetworkPathFound = TRUE|FALSE,
        ForwardPathComponents = list(
          list(
            SequenceNumber = 123,
            AclRule = list(
              Cidr = "string",
              Egress = TRUE|FALSE,
              PortRange = list(
                From = 123,
                To = 123
              ),
              Protocol = "string",
              RuleAction = "string",
              RuleNumber = 123
            ),
            AttachedTo = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Component = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            DestinationVpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            OutboundHeader = list(
              DestinationAddresses = list(
                "string"
              ),
              DestinationPortRanges = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocol = "string",
              SourceAddresses = list(
                "string"
              ),
              SourcePortRanges = list(
                list(
                  From = 123,
                  To = 123
                )
              )
            ),
            InboundHeader = list(
              DestinationAddresses = list(
                "string"
              ),
              DestinationPortRanges = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocol = "string",
              SourceAddresses = list(
                "string"
              ),
              SourcePortRanges = list(
                list(
                  From = 123,
                  To = 123
                )
              )
            ),
            RouteTableRoute = list(
              DestinationCidr = "string",
              DestinationPrefixListId = "string",
              EgressOnlyInternetGatewayId = "string",
              GatewayId = "string",
              InstanceId = "string",
              NatGatewayId = "string",
              NetworkInterfaceId = "string",
              Origin = "string",
              TransitGatewayId = "string",
              VpcPeeringConnectionId = "string",
              State = "string",
              CarrierGatewayId = "string",
              CoreNetworkArn = "string",
              LocalGatewayId = "string"
            ),
            SecurityGroupRule = list(
              Cidr = "string",
              Direction = "string",
              SecurityGroupId = "string",
              PortRange = list(
                From = 123,
                To = 123
              ),
              PrefixListId = "string",
              Protocol = "string"
            ),
            SourceVpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Subnet = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Vpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            AdditionalDetails = list(
              list(
                AdditionalDetailType = "string",
                Component = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                VpcEndpointService = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                RuleOptions = list(
                  list(
                    Keyword = "string",
                    Settings = list(
                      "string"
                    )
                  )
                ),
                RuleGroupTypePairs = list(
                  list(
                    RuleGroupArn = "string",
                    RuleGroupType = "string"
                  )
                ),
                RuleGroupRuleOptionsPairs = list(
                  list(
                    RuleGroupArn = "string",
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
                ServiceName = "string",
                LoadBalancers = list(
                  list(
                    Id = "string",
                    Arn = "string",
                    Name = "string"
                  )
                )
              )
            ),
            TransitGateway = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            TransitGatewayRouteTableRoute = list(
              DestinationCidr = "string",
              State = "string",
              RouteOrigin = "string",
              PrefixListId = "string",
              AttachmentId = "string",
              ResourceId = "string",
              ResourceType = "string"
            ),
            Explanations = list(
              list(
                Acl = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                AclRule = list(
                  Cidr = "string",
                  Egress = TRUE|FALSE,
                  PortRange = list(
                    From = 123,
                    To = 123
                  ),
                  Protocol = "string",
                  RuleAction = "string",
                  RuleNumber = 123
                ),
                Address = "string",
                Addresses = list(
                  "string"
                ),
                AttachedTo = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                AvailabilityZones = list(
                  "string"
                ),
                Cidrs = list(
                  "string"
                ),
                Component = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                CustomerGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Destination = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                DestinationVpc = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Direction = "string",
                ExplanationCode = "string",
                IngressRouteTable = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                InternetGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                LoadBalancerArn = "string",
                ClassicLoadBalancerListener = list(
                  LoadBalancerPort = 123,
                  InstancePort = 123
                ),
                LoadBalancerListenerPort = 123,
                LoadBalancerTarget = list(
                  Address = "string",
                  AvailabilityZone = "string",
                  Instance = list(
                    Id = "string",
                    Arn = "string",
                    Name = "string"
                  ),
                  Port = 123
                ),
                LoadBalancerTargetGroup = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                LoadBalancerTargetGroups = list(
                  list(
                    Id = "string",
                    Arn = "string",
                    Name = "string"
                  )
                ),
                LoadBalancerTargetPort = 123,
                ElasticLoadBalancerListener = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                MissingComponent = "string",
                NatGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                NetworkInterface = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                PacketField = "string",
                VpcPeeringConnection = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Port = 123,
                PortRanges = list(
                  list(
                    From = 123,
                    To = 123
                  )
                ),
                PrefixList = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Protocols = list(
                  "string"
                ),
                RouteTableRoute = list(
                  DestinationCidr = "string",
                  DestinationPrefixListId = "string",
                  EgressOnlyInternetGatewayId = "string",
                  GatewayId = "string",
                  InstanceId = "string",
                  NatGatewayId = "string",
                  NetworkInterfaceId = "string",
                  Origin = "string",
                  TransitGatewayId = "string",
                  VpcPeeringConnectionId = "string",
                  State = "string",
                  CarrierGatewayId = "string",
                  CoreNetworkArn = "string",
                  LocalGatewayId = "string"
                ),
                RouteTable = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                SecurityGroup = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                SecurityGroupRule = list(
                  Cidr = "string",
                  Direction = "string",
                  SecurityGroupId = "string",
                  PortRange = list(
                    From = 123,
                    To = 123
                  ),
                  PrefixListId = "string",
                  Protocol = "string"
                ),
                SecurityGroups = list(
                  list(
                    Id = "string",
                    Arn = "string",
                    Name = "string"
                  )
                ),
                SourceVpc = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                State = "string",
                Subnet = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                SubnetRouteTable = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Vpc = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                VpcEndpoint = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                VpnConnection = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                VpnGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                TransitGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                TransitGatewayRouteTable = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                TransitGatewayRouteTableRoute = list(
                  DestinationCidr = "string",
                  State = "string",
                  RouteOrigin = "string",
                  PrefixListId = "string",
                  AttachmentId = "string",
                  ResourceId = "string",
                  ResourceType = "string"
                ),
                TransitGatewayAttachment = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                ComponentAccount = "string",
                ComponentRegion = "string",
                FirewallStatelessRule = list(
                  RuleGroupArn = "string",
                  Sources = list(
                    "string"
                  ),
                  Destinations = list(
                    "string"
                  ),
                  SourcePorts = list(
                    list(
                      From = 123,
                      To = 123
                    )
                  ),
                  DestinationPorts = list(
                    list(
                      From = 123,
                      To = 123
                    )
                  ),
                  Protocols = list(
                    123
                  ),
                  RuleAction = "string",
                  Priority = 123
                ),
                FirewallStatefulRule = list(
                  RuleGroupArn = "string",
                  Sources = list(
                    "string"
                  ),
                  Destinations = list(
                    "string"
                  ),
                  SourcePorts = list(
                    list(
                      From = 123,
                      To = 123
                    )
                  ),
                  DestinationPorts = list(
                    list(
                      From = 123,
                      To = 123
                    )
                  ),
                  Protocol = "string",
                  RuleAction = "string",
                  Direction = "string"
                )
              )
            ),
            ElasticLoadBalancerListener = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            FirewallStatelessRule = list(
              RuleGroupArn = "string",
              Sources = list(
                "string"
              ),
              Destinations = list(
                "string"
              ),
              SourcePorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              DestinationPorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocols = list(
                123
              ),
              RuleAction = "string",
              Priority = 123
            ),
            FirewallStatefulRule = list(
              RuleGroupArn = "string",
              Sources = list(
                "string"
              ),
              Destinations = list(
                "string"
              ),
              SourcePorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              DestinationPorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocol = "string",
              RuleAction = "string",
              Direction = "string"
            ),
            ServiceName = "string"
          )
        ),
        ReturnPathComponents = list(
          list(
            SequenceNumber = 123,
            AclRule = list(
              Cidr = "string",
              Egress = TRUE|FALSE,
              PortRange = list(
                From = 123,
                To = 123
              ),
              Protocol = "string",
              RuleAction = "string",
              RuleNumber = 123
            ),
            AttachedTo = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Component = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            DestinationVpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            OutboundHeader = list(
              DestinationAddresses = list(
                "string"
              ),
              DestinationPortRanges = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocol = "string",
              SourceAddresses = list(
                "string"
              ),
              SourcePortRanges = list(
                list(
                  From = 123,
                  To = 123
                )
              )
            ),
            InboundHeader = list(
              DestinationAddresses = list(
                "string"
              ),
              DestinationPortRanges = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocol = "string",
              SourceAddresses = list(
                "string"
              ),
              SourcePortRanges = list(
                list(
                  From = 123,
                  To = 123
                )
              )
            ),
            RouteTableRoute = list(
              DestinationCidr = "string",
              DestinationPrefixListId = "string",
              EgressOnlyInternetGatewayId = "string",
              GatewayId = "string",
              InstanceId = "string",
              NatGatewayId = "string",
              NetworkInterfaceId = "string",
              Origin = "string",
              TransitGatewayId = "string",
              VpcPeeringConnectionId = "string",
              State = "string",
              CarrierGatewayId = "string",
              CoreNetworkArn = "string",
              LocalGatewayId = "string"
            ),
            SecurityGroupRule = list(
              Cidr = "string",
              Direction = "string",
              SecurityGroupId = "string",
              PortRange = list(
                From = 123,
                To = 123
              ),
              PrefixListId = "string",
              Protocol = "string"
            ),
            SourceVpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Subnet = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Vpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            AdditionalDetails = list(
              list(
                AdditionalDetailType = "string",
                Component = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                VpcEndpointService = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                RuleOptions = list(
                  list(
                    Keyword = "string",
                    Settings = list(
                      "string"
                    )
                  )
                ),
                RuleGroupTypePairs = list(
                  list(
                    RuleGroupArn = "string",
                    RuleGroupType = "string"
                  )
                ),
                RuleGroupRuleOptionsPairs = list(
                  list(
                    RuleGroupArn = "string",
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
                ServiceName = "string",
                LoadBalancers = list(
                  list(
                    Id = "string",
                    Arn = "string",
                    Name = "string"
                  )
                )
              )
            ),
            TransitGateway = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            TransitGatewayRouteTableRoute = list(
              DestinationCidr = "string",
              State = "string",
              RouteOrigin = "string",
              PrefixListId = "string",
              AttachmentId = "string",
              ResourceId = "string",
              ResourceType = "string"
            ),
            Explanations = list(
              list(
                Acl = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                AclRule = list(
                  Cidr = "string",
                  Egress = TRUE|FALSE,
                  PortRange = list(
                    From = 123,
                    To = 123
                  ),
                  Protocol = "string",
                  RuleAction = "string",
                  RuleNumber = 123
                ),
                Address = "string",
                Addresses = list(
                  "string"
                ),
                AttachedTo = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                AvailabilityZones = list(
                  "string"
                ),
                Cidrs = list(
                  "string"
                ),
                Component = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                CustomerGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Destination = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                DestinationVpc = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Direction = "string",
                ExplanationCode = "string",
                IngressRouteTable = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                InternetGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                LoadBalancerArn = "string",
                ClassicLoadBalancerListener = list(
                  LoadBalancerPort = 123,
                  InstancePort = 123
                ),
                LoadBalancerListenerPort = 123,
                LoadBalancerTarget = list(
                  Address = "string",
                  AvailabilityZone = "string",
                  Instance = list(
                    Id = "string",
                    Arn = "string",
                    Name = "string"
                  ),
                  Port = 123
                ),
                LoadBalancerTargetGroup = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                LoadBalancerTargetGroups = list(
                  list(
                    Id = "string",
                    Arn = "string",
                    Name = "string"
                  )
                ),
                LoadBalancerTargetPort = 123,
                ElasticLoadBalancerListener = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                MissingComponent = "string",
                NatGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                NetworkInterface = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                PacketField = "string",
                VpcPeeringConnection = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Port = 123,
                PortRanges = list(
                  list(
                    From = 123,
                    To = 123
                  )
                ),
                PrefixList = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Protocols = list(
                  "string"
                ),
                RouteTableRoute = list(
                  DestinationCidr = "string",
                  DestinationPrefixListId = "string",
                  EgressOnlyInternetGatewayId = "string",
                  GatewayId = "string",
                  InstanceId = "string",
                  NatGatewayId = "string",
                  NetworkInterfaceId = "string",
                  Origin = "string",
                  TransitGatewayId = "string",
                  VpcPeeringConnectionId = "string",
                  State = "string",
                  CarrierGatewayId = "string",
                  CoreNetworkArn = "string",
                  LocalGatewayId = "string"
                ),
                RouteTable = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                SecurityGroup = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                SecurityGroupRule = list(
                  Cidr = "string",
                  Direction = "string",
                  SecurityGroupId = "string",
                  PortRange = list(
                    From = 123,
                    To = 123
                  ),
                  PrefixListId = "string",
                  Protocol = "string"
                ),
                SecurityGroups = list(
                  list(
                    Id = "string",
                    Arn = "string",
                    Name = "string"
                  )
                ),
                SourceVpc = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                State = "string",
                Subnet = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                SubnetRouteTable = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                Vpc = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                VpcEndpoint = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                VpnConnection = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                VpnGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                TransitGateway = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                TransitGatewayRouteTable = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                TransitGatewayRouteTableRoute = list(
                  DestinationCidr = "string",
                  State = "string",
                  RouteOrigin = "string",
                  PrefixListId = "string",
                  AttachmentId = "string",
                  ResourceId = "string",
                  ResourceType = "string"
                ),
                TransitGatewayAttachment = list(
                  Id = "string",
                  Arn = "string",
                  Name = "string"
                ),
                ComponentAccount = "string",
                ComponentRegion = "string",
                FirewallStatelessRule = list(
                  RuleGroupArn = "string",
                  Sources = list(
                    "string"
                  ),
                  Destinations = list(
                    "string"
                  ),
                  SourcePorts = list(
                    list(
                      From = 123,
                      To = 123
                    )
                  ),
                  DestinationPorts = list(
                    list(
                      From = 123,
                      To = 123
                    )
                  ),
                  Protocols = list(
                    123
                  ),
                  RuleAction = "string",
                  Priority = 123
                ),
                FirewallStatefulRule = list(
                  RuleGroupArn = "string",
                  Sources = list(
                    "string"
                  ),
                  Destinations = list(
                    "string"
                  ),
                  SourcePorts = list(
                    list(
                      From = 123,
                      To = 123
                    )
                  ),
                  DestinationPorts = list(
                    list(
                      From = 123,
                      To = 123
                    )
                  ),
                  Protocol = "string",
                  RuleAction = "string",
                  Direction = "string"
                )
              )
            ),
            ElasticLoadBalancerListener = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            FirewallStatelessRule = list(
              RuleGroupArn = "string",
              Sources = list(
                "string"
              ),
              Destinations = list(
                "string"
              ),
              SourcePorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              DestinationPorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocols = list(
                123
              ),
              RuleAction = "string",
              Priority = 123
            ),
            FirewallStatefulRule = list(
              RuleGroupArn = "string",
              Sources = list(
                "string"
              ),
              Destinations = list(
                "string"
              ),
              SourcePorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              DestinationPorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocol = "string",
              RuleAction = "string",
              Direction = "string"
            ),
            ServiceName = "string"
          )
        ),
        Explanations = list(
          list(
            Acl = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            AclRule = list(
              Cidr = "string",
              Egress = TRUE|FALSE,
              PortRange = list(
                From = 123,
                To = 123
              ),
              Protocol = "string",
              RuleAction = "string",
              RuleNumber = 123
            ),
            Address = "string",
            Addresses = list(
              "string"
            ),
            AttachedTo = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            AvailabilityZones = list(
              "string"
            ),
            Cidrs = list(
              "string"
            ),
            Component = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            CustomerGateway = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Destination = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            DestinationVpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Direction = "string",
            ExplanationCode = "string",
            IngressRouteTable = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            InternetGateway = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            LoadBalancerArn = "string",
            ClassicLoadBalancerListener = list(
              LoadBalancerPort = 123,
              InstancePort = 123
            ),
            LoadBalancerListenerPort = 123,
            LoadBalancerTarget = list(
              Address = "string",
              AvailabilityZone = "string",
              Instance = list(
                Id = "string",
                Arn = "string",
                Name = "string"
              ),
              Port = 123
            ),
            LoadBalancerTargetGroup = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            LoadBalancerTargetGroups = list(
              list(
                Id = "string",
                Arn = "string",
                Name = "string"
              )
            ),
            LoadBalancerTargetPort = 123,
            ElasticLoadBalancerListener = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            MissingComponent = "string",
            NatGateway = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            NetworkInterface = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            PacketField = "string",
            VpcPeeringConnection = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Port = 123,
            PortRanges = list(
              list(
                From = 123,
                To = 123
              )
            ),
            PrefixList = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Protocols = list(
              "string"
            ),
            RouteTableRoute = list(
              DestinationCidr = "string",
              DestinationPrefixListId = "string",
              EgressOnlyInternetGatewayId = "string",
              GatewayId = "string",
              InstanceId = "string",
              NatGatewayId = "string",
              NetworkInterfaceId = "string",
              Origin = "string",
              TransitGatewayId = "string",
              VpcPeeringConnectionId = "string",
              State = "string",
              CarrierGatewayId = "string",
              CoreNetworkArn = "string",
              LocalGatewayId = "string"
            ),
            RouteTable = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            SecurityGroup = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            SecurityGroupRule = list(
              Cidr = "string",
              Direction = "string",
              SecurityGroupId = "string",
              PortRange = list(
                From = 123,
                To = 123
              ),
              PrefixListId = "string",
              Protocol = "string"
            ),
            SecurityGroups = list(
              list(
                Id = "string",
                Arn = "string",
                Name = "string"
              )
            ),
            SourceVpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            State = "string",
            Subnet = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            SubnetRouteTable = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            Vpc = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            VpcEndpoint = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            VpnConnection = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            VpnGateway = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            TransitGateway = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            TransitGatewayRouteTable = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            TransitGatewayRouteTableRoute = list(
              DestinationCidr = "string",
              State = "string",
              RouteOrigin = "string",
              PrefixListId = "string",
              AttachmentId = "string",
              ResourceId = "string",
              ResourceType = "string"
            ),
            TransitGatewayAttachment = list(
              Id = "string",
              Arn = "string",
              Name = "string"
            ),
            ComponentAccount = "string",
            ComponentRegion = "string",
            FirewallStatelessRule = list(
              RuleGroupArn = "string",
              Sources = list(
                "string"
              ),
              Destinations = list(
                "string"
              ),
              SourcePorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              DestinationPorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocols = list(
                123
              ),
              RuleAction = "string",
              Priority = 123
            ),
            FirewallStatefulRule = list(
              RuleGroupArn = "string",
              Sources = list(
                "string"
              ),
              Destinations = list(
                "string"
              ),
              SourcePorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              DestinationPorts = list(
                list(
                  From = 123,
                  To = 123
                )
              ),
              Protocol = "string",
              RuleAction = "string",
              Direction = "string"
            )
          )
        ),
        AlternatePathHints = list(
          list(
            ComponentId = "string",
            ComponentArn = "string"
          )
        ),
        SuggestedAccounts = list(
          "string"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$start_network_insights_analysis(
      NetworkInsightsPathId = "string",
      AdditionalAccounts = list(
        "string"
      ),
      FilterInArns = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      ClientToken = "string"
    )

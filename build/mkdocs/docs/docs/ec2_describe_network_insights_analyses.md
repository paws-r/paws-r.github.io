<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_network_insights_analyses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your network insights analyses

### Description

Describes one or more of your network insights analyses.

### Usage

    ec2_describe_network_insights_analyses(NetworkInsightsAnalysisIds,
      NetworkInsightsPathId, AnalysisStartTime, AnalysisEndTime, Filters,
      MaxResults, DryRun, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_analyses_:_NetworkInsightsAnalysisIds">NetworkInsightsAnalysisIds</code></td>
<td><p>The ID of the network insights analyses. You must specify either
analysis IDs or a path ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_analyses_:_NetworkInsightsPathId">NetworkInsightsPathId</code></td>
<td><p>The ID of the path. You must specify either a path ID or analysis
IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_analyses_:_AnalysisStartTime">AnalysisStartTime</code></td>
<td><p>The time when the network insights analyses started.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_analyses_:_AnalysisEndTime">AnalysisEndTime</code></td>
<td><p>The time when the network insights analyses ended.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_analyses_:_Filters">Filters</code></td>
<td><p>The filters. The following are the possible values:</p>
<ul>
<li><p>path-found - A Boolean value that indicates whether a feasible
path is found.</p></li>
<li><p>status - The status of the analysis (running | succeeded |
failed).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_analyses_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_network_insights_analyses_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_network_insights_analyses_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInsightsAnalyses = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_network_insights_analyses(
      NetworkInsightsAnalysisIds = list(
        "string"
      ),
      NetworkInsightsPathId = "string",
      AnalysisStartTime = as.POSIXct(
        "2015-01-01"
      ),
      AnalysisEndTime = as.POSIXct(
        "2015-01-01"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      DryRun = TRUE|FALSE,
      NextToken = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_start_network_insights_access_scope_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts analyzing the specified Network Access Scope

### Description

Starts analyzing the specified Network Access Scope.

### Usage

    ec2_start_network_insights_access_scope_analysis(
      NetworkInsightsAccessScopeId, DryRun, TagSpecifications, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_start_network_insights_access_scope_analysis_:_NetworkInsightsAccessScopeId">NetworkInsightsAccessScopeId</code></td>
<td><p>[required] The ID of the Network Access Scope.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_start_network_insights_access_scope_analysis_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_start_network_insights_access_scope_analysis_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_start_network_insights_access_scope_analysis_:_ClientToken">ClientToken</code></td>
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
      NetworkInsightsAccessScopeAnalysis = list(
        NetworkInsightsAccessScopeAnalysisId = "string",
        NetworkInsightsAccessScopeAnalysisArn = "string",
        NetworkInsightsAccessScopeId = "string",
        Status = "running"|"succeeded"|"failed",
        StatusMessage = "string",
        WarningMessage = "string",
        StartDate = as.POSIXct(
          "2015-01-01"
        ),
        EndDate = as.POSIXct(
          "2015-01-01"
        ),
        FindingsFound = "true"|"false"|"unknown",
        AnalyzedEniCount = 123,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$start_network_insights_access_scope_analysis(
      NetworkInsightsAccessScopeId = "string",
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

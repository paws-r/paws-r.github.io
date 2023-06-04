<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_start_route_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts analyzing the routing path between the specified source and destination

### Description

Starts analyzing the routing path between the specified source and
destination. For more information, see [Route
Analyzer](https://docs.aws.amazon.com/network-manager/latest/tgwnm/route-analyzer.html).

### Usage

    networkmanager_start_route_analysis(GlobalNetworkId, Source,
      Destination, IncludeReturnPath, UseMiddleboxes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_start_route_analysis_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_start_route_analysis_:_Source">Source</code></td>
<td><p>[required] The source from which traffic originates.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_start_route_analysis_:_Destination">Destination</code></td>
<td><p>[required] The destination.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_start_route_analysis_:_IncludeReturnPath">IncludeReturnPath</code></td>
<td><p>Indicates whether to analyze the return path. The default is
<code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_start_route_analysis_:_UseMiddleboxes">UseMiddleboxes</code></td>
<td><p>Indicates whether to include the location of middlebox appliances
in the route analysis. The default is <code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RouteAnalysis = list(
        GlobalNetworkId = "string",
        OwnerAccountId = "string",
        RouteAnalysisId = "string",
        StartTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        Status = "RUNNING"|"COMPLETED"|"FAILED",
        Source = list(
          TransitGatewayAttachmentArn = "string",
          TransitGatewayArn = "string",
          IpAddress = "string"
        ),
        Destination = list(
          TransitGatewayAttachmentArn = "string",
          TransitGatewayArn = "string",
          IpAddress = "string"
        ),
        IncludeReturnPath = TRUE|FALSE,
        UseMiddleboxes = TRUE|FALSE,
        ForwardPath = list(
          CompletionStatus = list(
            ResultCode = "CONNECTED"|"NOT_CONNECTED",
            ReasonCode = "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND"|"TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY"|"CYCLIC_PATH_DETECTED"|"TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND"|"ROUTE_NOT_FOUND"|"BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND"|"INACTIVE_ROUTE_FOR_DESTINATION_FOUND"|"TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH"|"MAX_HOPS_EXCEEDED"|"POSSIBLE_MIDDLEBOX"|"NO_DESTINATION_ARN_PROVIDED",
            ReasonContext = list(
              "string"
            )
          ),
          Path = list(
            list(
              Sequence = 123,
              Resource = list(
                RegisteredGatewayArn = "string",
                ResourceArn = "string",
                ResourceType = "string",
                Definition = "string",
                NameTag = "string",
                IsMiddlebox = TRUE|FALSE
              ),
              DestinationCidrBlock = "string"
            )
          )
        ),
        ReturnPath = list(
          CompletionStatus = list(
            ResultCode = "CONNECTED"|"NOT_CONNECTED",
            ReasonCode = "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND"|"TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY"|"CYCLIC_PATH_DETECTED"|"TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND"|"ROUTE_NOT_FOUND"|"BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND"|"INACTIVE_ROUTE_FOR_DESTINATION_FOUND"|"TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH"|"MAX_HOPS_EXCEEDED"|"POSSIBLE_MIDDLEBOX"|"NO_DESTINATION_ARN_PROVIDED",
            ReasonContext = list(
              "string"
            )
          ),
          Path = list(
            list(
              Sequence = 123,
              Resource = list(
                RegisteredGatewayArn = "string",
                ResourceArn = "string",
                ResourceType = "string",
                Definition = "string",
                NameTag = "string",
                IsMiddlebox = TRUE|FALSE
              ),
              DestinationCidrBlock = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$start_route_analysis(
      GlobalNetworkId = "string",
      Source = list(
        TransitGatewayAttachmentArn = "string",
        IpAddress = "string"
      ),
      Destination = list(
        TransitGatewayAttachmentArn = "string",
        IpAddress = "string"
      ),
      IncludeReturnPath = TRUE|FALSE,
      UseMiddleboxes = TRUE|FALSE
    )

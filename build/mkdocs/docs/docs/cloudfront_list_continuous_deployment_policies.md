<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_continuous_deployment_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the continuous deployment policies in your Amazon Web Services account

### Description

Gets a list of the continuous deployment policies in your Amazon Web
Services account.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the subsequent request.

### Usage

    cloudfront_list_continuous_deployment_policies(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_continuous_deployment_policies_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in your list of continuous deployment policies. The response includes
policies in the list that occur after the marker. To get the next page
of the list, set this field's value to the value of
<code>NextMarker</code> from the current page's response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_continuous_deployment_policies_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of continuous deployment policies that you
want returned in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContinuousDeploymentPolicyList = list(
        NextMarker = "string",
        MaxItems = 123,
        Quantity = 123,
        Items = list(
          list(
            ContinuousDeploymentPolicy = list(
              Id = "string",
              LastModifiedTime = as.POSIXct(
                "2015-01-01"
              ),
              ContinuousDeploymentPolicyConfig = list(
                StagingDistributionDnsNames = list(
                  Quantity = 123,
                  Items = list(
                    "string"
                  )
                ),
                Enabled = TRUE|FALSE,
                TrafficConfig = list(
                  SingleWeightConfig = list(
                    Weight = 123.0,
                    SessionStickinessConfig = list(
                      IdleTTL = 123,
                      MaximumTTL = 123
                    )
                  ),
                  SingleHeaderConfig = list(
                    Header = "string",
                    Value = "string"
                  ),
                  Type = "SingleWeight"|"SingleHeader"
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$list_continuous_deployment_policies(
      Marker = "string",
      MaxItems = "string"
    )

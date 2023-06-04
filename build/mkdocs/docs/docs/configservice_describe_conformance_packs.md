<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_conformance_packs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of one or more conformance packs

### Description

Returns a list of one or more conformance packs.

### Usage

    configservice_describe_conformance_packs(ConformancePackNames, Limit,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_conformance_packs_:_ConformancePackNames">ConformancePackNames</code></td>
<td><p>Comma-separated list of conformance pack names for which you want
details. If you do not specify any names, Config returns details for all
your conformance packs.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_conformance_packs_:_Limit">Limit</code></td>
<td><p>The maximum number of conformance packs returned on each
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_conformance_packs_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned in a previous request
that you use to request the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConformancePackDetails = list(
        list(
          ConformancePackName = "string",
          ConformancePackArn = "string",
          ConformancePackId = "string",
          DeliveryS3Bucket = "string",
          DeliveryS3KeyPrefix = "string",
          ConformancePackInputParameters = list(
            list(
              ParameterName = "string",
              ParameterValue = "string"
            )
          ),
          LastUpdateRequestedTime = as.POSIXct(
            "2015-01-01"
          ),
          CreatedBy = "string",
          TemplateSSMDocumentDetails = list(
            DocumentName = "string",
            DocumentVersion = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_conformance_packs(
      ConformancePackNames = list(
        "string"
      ),
      Limit = 123,
      NextToken = "string"
    )

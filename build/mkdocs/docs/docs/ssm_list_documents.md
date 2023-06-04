<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_documents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all Systems Manager (SSM) documents in the current Amazon Web Services account and Amazon Web Services Region

### Description

Returns all Systems Manager (SSM) documents in the current Amazon Web
Services account and Amazon Web Services Region. You can limit the
results of this request by using a filter.

### Usage

    ssm_list_documents(DocumentFilterList, Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_documents_:_DocumentFilterList">DocumentFilterList</code></td>
<td><p>This data type is deprecated. Instead, use
<code>Filters</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_list_documents_:_Filters">Filters</code></td>
<td><p>One or more <code>DocumentKeyValuesFilter</code> objects. Use a
filter to return a more specific list of results. For keys, you can
specify one or more key-value pair tags that have been applied to a
document. Other valid keys include <code>Owner</code>,
<code>Name</code>, <code>PlatformTypes</code>,
<code>DocumentType</code>, and <code>TargetType</code>. For example, to
return documents you own use <code
style="white-space: pre;">⁠Key=Owner,Values=Self⁠</code>. To specify a
custom key-value pair, use the format <code
style="white-space: pre;">⁠Key=tag:tagName,Values=valueName⁠</code>.</p>
<p>This API operation only supports filtering documents by using a
single tag key and one or more tag values. For example: <code
style="white-space: pre;">⁠Key=tag:tagName,Values=valueName1,valueName2⁠</code></p></td>
</tr>
<tr class="odd">
<td><code id="ssm_list_documents_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_list_documents_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentIdentifiers = list(
        list(
          Name = "string",
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          DisplayName = "string",
          Owner = "string",
          VersionName = "string",
          PlatformTypes = list(
            "Windows"|"Linux"|"MacOS"
          ),
          DocumentVersion = "string",
          DocumentType = "Command"|"Policy"|"Automation"|"Session"|"Package"|"ApplicationConfiguration"|"ApplicationConfigurationSchema"|"DeploymentStrategy"|"ChangeCalendar"|"Automation.ChangeTemplate"|"ProblemAnalysis"|"ProblemAnalysisTemplate"|"CloudFormation"|"ConformancePackTemplate"|"QuickSetup",
          SchemaVersion = "string",
          DocumentFormat = "YAML"|"JSON"|"TEXT",
          TargetType = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          Requires = list(
            list(
              Name = "string",
              Version = "string",
              RequireType = "string",
              VersionName = "string"
            )
          ),
          ReviewStatus = "APPROVED"|"NOT_REVIEWED"|"PENDING"|"REJECTED",
          Author = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_documents(
      DocumentFilterList = list(
        list(
          key = "Name"|"Owner"|"PlatformTypes"|"DocumentType",
          value = "string"
        )
      ),
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )

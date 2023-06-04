<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_list_access_previews</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of access previews for the specified analyzer

### Description

Retrieves a list of access previews for the specified analyzer.

### Usage

    accessanalyzer_list_access_previews(analyzerArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_list_access_previews_:_analyzerArn">analyzerArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN
of the analyzer</a> used to generate the access preview.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_list_access_previews_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_list_access_previews_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accessPreviews = list(
        list(
          id = "string",
          analyzerArn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          status = "COMPLETED"|"CREATING"|"FAILED",
          statusReason = list(
            code = "INTERNAL_ERROR"|"INVALID_CONFIGURATION"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_access_previews(
      analyzerArn = "string",
      nextToken = "string",
      maxResults = 123
    )

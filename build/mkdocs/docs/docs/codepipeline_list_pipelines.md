<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_list_pipelines</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a summary of all of the pipelines associated with your account

### Description

Gets a summary of all of the pipelines associated with your account.

### Usage

    codepipeline_list_pipelines(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_list_pipelines_:_nextToken">nextToken</code></td>
<td><p>An identifier that was returned from the previous list pipelines
call. It can be used to return the next set of pipelines in the
list.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_list_pipelines_:_maxResults">maxResults</code></td>
<td><p>The maximum number of pipelines to return in a single call. To
retrieve the remaining pipelines, make another call with the returned
nextToken value. The minimum value you can specify is 1. The maximum
accepted value is 1000.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelines = list(
        list(
          name = "string",
          version = 123,
          created = as.POSIXct(
            "2015-01-01"
          ),
          updated = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_pipelines(
      nextToken = "string",
      maxResults = 123
    )

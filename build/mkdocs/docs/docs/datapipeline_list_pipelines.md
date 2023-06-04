<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_list_pipelines</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the pipeline identifiers for all active pipelines that you have permission to access

### Description

Lists the pipeline identifiers for all active pipelines that you have
permission to access.

### Usage

    datapipeline_list_pipelines(marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="datapipeline_list_pipelines_:_marker">marker</code></td>
<td><p>The starting point for the results to be returned. For the first
call, this value should be empty. As long as there are more results,
continue to call <code>list_pipelines</code> with the marker value from
the previous call to retrieve the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineIdList = list(
        list(
          id = "string",
          name = "string"
        )
      ),
      marker = "string",
      hasMoreResults = TRUE|FALSE
    )

### Request syntax

    svc$list_pipelines(
      marker = "string"
    )

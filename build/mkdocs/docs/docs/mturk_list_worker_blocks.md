<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_worker_blocks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListWorkersBlocks operation retrieves a list of Workers who are blocked from working on your HITs

### Description

The `ListWorkersBlocks` operation retrieves a list of Workers who are
blocked from working on your HITs.

### Usage

    mturk_list_worker_blocks(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_list_worker_blocks_:_NextToken">NextToken</code></td>
<td><p>Pagination token</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_worker_blocks_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NumResults = 123,
      WorkerBlocks = list(
        list(
          WorkerId = "string",
          Reason = "string"
        )
      )
    )

### Request syntax

    svc$list_worker_blocks(
      NextToken = "string",
      MaxResults = 123
    )

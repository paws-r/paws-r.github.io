<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_update_hit_review_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The UpdateHITReviewStatus operation updates the status of a HIT

### Description

The `update_hit_review_status` operation updates the status of a HIT. If
the status is Reviewable, this operation can update the status to
Reviewing, or it can revert a Reviewing HIT back to the Reviewable
status.

### Usage

    mturk_update_hit_review_status(HITId, Revert)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_update_hit_review_status_:_HITId">HITId</code></td>
<td><p>[required] The ID of the HIT to update.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_update_hit_review_status_:_Revert">Revert</code></td>
<td><p>Specifies how to update the HIT status. Default is
<code>False</code>.</p>
<ul>
<li><p>Setting this to false will only transition a HIT from
<code>Reviewable</code> to <code>Reviewing</code></p></li>
<li><p>Setting this to true will only transition a HIT from
<code>Reviewing</code> to <code>Reviewable</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_hit_review_status(
      HITId = "string",
      Revert = TRUE|FALSE
    )

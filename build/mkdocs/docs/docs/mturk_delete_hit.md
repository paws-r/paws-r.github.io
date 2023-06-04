<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_delete_hit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteHIT operation is used to delete HIT that is no longer needed

### Description

The `delete_hit` operation is used to delete HIT that is no longer
needed. Only the Requester who created the HIT can delete it.

You can only dispose of HITs that are in the `Reviewable` state, with
all of their submitted assignments already either approved or rejected.
If you call the DeleteHIT operation on a HIT that is not in the
`Reviewable` state (for example, that has not expired, or still has
active assignments), or on a HIT that is Reviewable but without all of
its submitted assignments already approved or rejected, the service will
return an error.

-   HITs are automatically disposed of after 120 days.

-   After you dispose of a HIT, you can no longer approve the HIT's
    rejected assignments.

-   Disposed HITs are not returned in results for the ListHITs
    operation.

-   Disposing HITs can improve the performance of operations such as
    ListReviewableHITs and ListHITs.

### Usage

    mturk_delete_hit(HITId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_delete_hit_:_HITId">HITId</code></td>
<td><p>[required] The ID of the HIT to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_hit(
      HITId = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_create_additional_assignments_for_hit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateAdditionalAssignmentsForHIT operation increases the maximum number of assignments of an existing HIT

### Description

The `create_additional_assignments_for_hit` operation increases the
maximum number of assignments of an existing HIT.

To extend the maximum number of assignments, specify the number of
additional assignments.

-   HITs created with fewer than 10 assignments cannot be extended to
    have 10 or more assignments. Attempting to add assignments in a way
    that brings the total number of assignments for a HIT from fewer
    than 10 assignments to 10 or more assignments will result in an
    `AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease` exception.

-   HITs that were created before July 22, 2015 cannot be extended.
    Attempting to extend HITs that were created before July 22, 2015
    will result in an `AWS.MechanicalTurk.HITTooOldForExtension`
    exception.

### Usage

    mturk_create_additional_assignments_for_hit(HITId,
      NumberOfAdditionalAssignments, UniqueRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_create_additional_assignments_for_hit_:_HITId">HITId</code></td>
<td><p>[required] The ID of the HIT to extend.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_additional_assignments_for_hit_:_NumberOfAdditionalAssignments">NumberOfAdditionalAssignments</code></td>
<td><p>[required] The number of additional assignments to request for
this HIT.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_additional_assignments_for_hit_:_UniqueRequestToken">UniqueRequestToken</code></td>
<td><p>A unique identifier for this request, which allows you to retry
the call on error without extending the HIT multiple times. This is
useful in cases such as network timeouts where it is unclear whether or
not the call succeeded on the server. If the extend HIT already exists
in the system from a previous call using the same
<code>UniqueRequestToken</code>, subsequent calls will return an error
with a message containing the request ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_additional_assignments_for_hit(
      HITId = "string",
      NumberOfAdditionalAssignments = 123,
      UniqueRequestToken = "string"
    )

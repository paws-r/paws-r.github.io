<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_delete_compute_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Batch compute environment

### Description

Deletes an Batch compute environment.

Before you can delete a compute environment, you must set its state to
`DISABLED` with the `update_compute_environment` API operation and
disassociate it from any job queues with the `update_job_queue` API
operation. Compute environments that use Fargate resources must
terminate all active jobs on that compute environment before deleting
the compute environment. If this isn't done, the compute environment
enters an invalid state.

### Usage

    batch_delete_compute_environment(computeEnvironment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_delete_compute_environment_:_computeEnvironment">computeEnvironment</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the compute
environment to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_compute_environment(
      computeEnvironment = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the P2OnDemand compute environment.
    svc$delete_compute_environment(
      computeEnvironment = "P2OnDemand"
    )

    ## End(Not run)

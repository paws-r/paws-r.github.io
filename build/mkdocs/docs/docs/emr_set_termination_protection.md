<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_set_termination_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## SetTerminationProtection locks a cluster (job flow) so the Amazon EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error

### Description

SetTerminationProtection locks a cluster (job flow) so the Amazon EC2
instances in the cluster cannot be terminated by user intervention, an
API call, or in the event of a job-flow error. The cluster still
terminates upon successful completion of the job flow. Calling
`set_termination_protection` on a cluster is similar to calling the
Amazon EC2 `DisableAPITermination` API on all Amazon EC2 instances in a
cluster.

`set_termination_protection` is used to prevent accidental termination
of a cluster and to ensure that in the event of an error, the instances
persist so that you can recover any data stored in their ephemeral
instance storage.

To terminate a cluster that has been locked by setting
`set_termination_protection` to `true`, you must first unlock the job
flow by a subsequent call to `set_termination_protection` in which you
set the value to `false`.

For more information, see[Managing Cluster
Termination](https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html)
in the *Amazon EMR Management Guide*.

### Usage

    emr_set_termination_protection(JobFlowIds, TerminationProtected)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_set_termination_protection_:_JobFlowIds">JobFlowIds</code></td>
<td><p>[required] A list of strings that uniquely identify the clusters
to protect. This identifier is returned by <code>run_job_flow</code> and
can also be obtained from <code>describe_job_flows</code> .</p></td>
</tr>
<tr class="even">
<td><code
id="emr_set_termination_protection_:_TerminationProtected">TerminationProtected</code></td>
<td><p>[required] A Boolean that indicates whether to protect the
cluster and prevent the Amazon EC2 instances in the cluster from
shutting down due to API calls, user intervention, or job-flow
error.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_termination_protection(
      JobFlowIds = list(
        "string"
      ),
      TerminationProtected = TRUE|FALSE
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_volume_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the status of the specified volumes

### Description

Describes the status of the specified volumes. Volume status provides
the result of the checks performed on your volumes to determine events
that can impair the performance of your volumes. The performance of a
volume can be affected if an issue occurs on the volume's underlying
host. If the volume's underlying host experiences a power outage or
system issue, after the system is restored, there could be data
inconsistencies on the volume. Volume events notify you if this occurs.
Volume actions notify you if any action needs to be taken in response to
the event.

The `describe_volume_status` operation provides the following
information about the specified volumes:

*Status*: Reflects the current status of the volume. The possible values
are `ok`, `impaired` , `warning`, or `insufficient-data`. If all checks
pass, the overall status of the volume is `ok`. If the check fails, the
overall status is `impaired`. If the status is `insufficient-data`, then
the checks might still be taking place on your volume at the time. We
recommend that you retry the request. For more information about volume
status, see [Monitor the status of your
volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html)
in the *Amazon Elastic Compute Cloud User Guide*.

*Events*: Reflect the cause of a volume status and might require you to
take action. For example, if your volume returns an `impaired` status,
then the volume event might be `potential-data-inconsistency`. This
means that your volume has been affected by an issue with the underlying
host, has all I/O operations disabled, and might have inconsistent data.

*Actions*: Reflect the actions you might have to take in response to an
event. For example, if the status of the volume is `impaired` and the
volume event shows `potential-data-inconsistency`, then the action shows
`enable-volume-io`. This means that you may want to enable the I/O
operations for the volume by calling the `enable_volume_io` action and
then check the volume for data consistency.

Volume status is based on the volume status checks, and does not reflect
the volume state. Therefore, volume status does not indicate volumes in
the `error` state (for example, when a volume is incapable of accepting
I/O.)

### Usage

    ec2_describe_volume_status(Filters, MaxResults, NextToken, VolumeIds,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_volume_status_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>action.code</code> - The action code for the event (for
example, <code>enable-volume-io</code>).</p></li>
<li><p><code>action.description</code> - A description of the
action.</p></li>
<li><p><code>action.event-id</code> - The event ID associated with the
action.</p></li>
<li><p><code>availability-zone</code> - The Availability Zone of the
instance.</p></li>
<li><p><code>event.description</code> - A description of the
event.</p></li>
<li><p><code>event.event-id</code> - The event ID.</p></li>
<li><p><code>event.event-type</code> - The event type (for
<code>io-enabled</code>: <code>passed</code> | <code>failed</code>; for
<code>io-performance</code>: <code>io-performance:degraded</code> |
<code>io-performance:severely-degraded</code> |
<code>io-performance:stalled</code>).</p></li>
<li><p><code>event.not-after</code> - The latest end time for the
event.</p></li>
<li><p><code>event.not-before</code> - The earliest start time for the
event.</p></li>
<li><p><code>volume-status.details-name</code> - The cause for
<code>volume-status.status</code> (<code>io-enabled</code> |
<code>io-performance</code>).</p></li>
<li><p><code>volume-status.details-status</code> - The status of
<code>volume-status.details-name</code> (for <code>io-enabled</code>:
<code>passed</code> | <code>failed</code>; for
<code>io-performance</code>: <code>normal</code> | <code>degraded</code>
| <code>severely-degraded</code> | <code>stalled</code>).</p></li>
<li><p><code>volume-status.status</code> - The status of the volume
(<code>ok</code> | <code>impaired</code> | <code>warning</code> |
<code>insufficient-data</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_volume_status_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. This value can be between 5 and 1,000; if the value is
larger than 1,000, only 1,000 results are returned. If this parameter is
not used, then all items are returned. You cannot specify this parameter
and the volume IDs parameter in the same request. For more information,
see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_volume_status_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_volume_status_:_VolumeIds">VolumeIds</code></td>
<td><p>The IDs of the volumes.</p>
<p>Default: Describes all your volumes.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_volume_status_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      VolumeStatuses = list(
        list(
          Actions = list(
            list(
              Code = "string",
              Description = "string",
              EventId = "string",
              EventType = "string"
            )
          ),
          AvailabilityZone = "string",
          OutpostArn = "string",
          Events = list(
            list(
              Description = "string",
              EventId = "string",
              EventType = "string",
              NotAfter = as.POSIXct(
                "2015-01-01"
              ),
              NotBefore = as.POSIXct(
                "2015-01-01"
              ),
              InstanceId = "string"
            )
          ),
          VolumeId = "string",
          VolumeStatus = list(
            Details = list(
              list(
                Name = "io-enabled"|"io-performance",
                Status = "string"
              )
            ),
            Status = "ok"|"impaired"|"insufficient-data"
          ),
          AttachmentStatuses = list(
            list(
              IoPerformance = "string",
              InstanceId = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_volume_status(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      VolumeIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the status for the volume
    # `vol-1234567890abcdef0`.
    svc$describe_volume_status(
      VolumeIds = list(
        "vol-1234567890abcdef0"
      )
    )

    # This example describes the status for all volumes that are impaired. In
    # this example output, there are no impaired volumes.
    svc$describe_volume_status(
      Filters = list(
        list(
          Name = "volume-status.status",
          Values = list(
            "impaired"
          )
        )
      )
    )

    ## End(Not run)

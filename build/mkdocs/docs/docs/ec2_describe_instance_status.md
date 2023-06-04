<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_instance_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the status of the specified instances or all of your instances

### Description

Describes the status of the specified instances or all of your
instances. By default, only running instances are described, unless you
specifically indicate to return the status of all instances.

Instance status includes the following components:

-   **Status checks** - Amazon EC2 performs status checks on running EC2
    instances to identify hardware and software issues. For more
    information, see [Status checks for your
    instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html)
    and [Troubleshoot instances with failed status
    checks](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html)
    in the *Amazon EC2 User Guide*.

-   **Scheduled events** - Amazon EC2 can schedule events (such as
    reboot, stop, or terminate) for your instances related to hardware
    issues, software updates, or system maintenance. For more
    information, see [Scheduled events for your
    instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html)
    in the *Amazon EC2 User Guide*.

-   **Instance state** - You can manage your instances from the moment
    you launch them through their termination. For more information, see
    [Instance
    lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
    in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_instance_status(Filters, InstanceIds, MaxResults,
      NextToken, DryRun, IncludeAllInstances)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_instance_status_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>availability-zone</code> - The Availability Zone of the
instance.</p></li>
<li><p><code>event.code</code> - The code for the scheduled event
(<code>instance-reboot</code> | <code>system-reboot</code> |
<code>system-maintenance</code> | <code>instance-retirement</code> |
<code>instance-stop</code>).</p></li>
<li><p><code>event.description</code> - A description of the
event.</p></li>
<li><p><code>event.instance-event-id</code> - The ID of the event whose
date and time you are modifying.</p></li>
<li><p><code>event.not-after</code> - The latest end time for the
scheduled event (for example, <code
style="white-space: pre;">⁠2014-09-15T17:15:20.000Z⁠</code>).</p></li>
<li><p><code>event.not-before</code> - The earliest start time for the
scheduled event (for example, <code
style="white-space: pre;">⁠2014-09-15T17:15:20.000Z⁠</code>).</p></li>
<li><p><code>event.not-before-deadline</code> - The deadline for
starting the event (for example, <code
style="white-space: pre;">⁠2014-09-15T17:15:20.000Z⁠</code>).</p></li>
<li><p><code>instance-state-code</code> - The code for the instance
state, as a 16-bit unsigned integer. The high byte is used for internal
purposes and should be ignored. The low byte is set based on the state
represented. The valid values are 0 (pending), 16 (running), 32
(shutting-down), 48 (terminated), 64 (stopping), and 80
(stopped).</p></li>
<li><p><code>instance-state-name</code> - The state of the instance
(<code>pending</code> | <code>running</code> |
<code>shutting-down</code> | <code>terminated</code> |
<code>stopping</code> | <code>stopped</code>).</p></li>
<li><p><code>instance-status.reachability</code> - Filters on instance
status where the name is <code>reachability</code> (<code>passed</code>
| <code>failed</code> | <code>initializing</code> |
<code>insufficient-data</code>).</p></li>
<li><p><code>instance-status.status</code> - The status of the instance
(<code>ok</code> | <code>impaired</code> | <code>initializing</code> |
<code>insufficient-data</code> | <code>not-applicable</code>).</p></li>
<li><p><code>system-status.reachability</code> - Filters on system
status where the name is <code>reachability</code> (<code>passed</code>
| <code>failed</code> | <code>initializing</code> |
<code>insufficient-data</code>).</p></li>
<li><p><code>system-status.status</code> - The system status of the
instance (<code>ok</code> | <code>impaired</code> |
<code>initializing</code> | <code>insufficient-data</code> |
<code>not-applicable</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instance_status_:_InstanceIds">InstanceIds</code></td>
<td><p>The instance IDs.</p>
<p>Default: Describes all your instances.</p>
<p>Constraints: Maximum 100 explicitly specified instance IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_instance_status_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p>
<p>You cannot specify this parameter and the instance IDs parameter in
the same request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instance_status_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_instance_status_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instance_status_:_IncludeAllInstances">IncludeAllInstances</code></td>
<td><p>When <code>true</code>, includes the health status for all
instances. When <code>false</code>, includes the health status for
running instances only.</p>
<p>Default: <code>false</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceStatuses = list(
        list(
          AvailabilityZone = "string",
          OutpostArn = "string",
          Events = list(
            list(
              InstanceEventId = "string",
              Code = "instance-reboot"|"system-reboot"|"system-maintenance"|"instance-retirement"|"instance-stop",
              Description = "string",
              NotAfter = as.POSIXct(
                "2015-01-01"
              ),
              NotBefore = as.POSIXct(
                "2015-01-01"
              ),
              NotBeforeDeadline = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          InstanceId = "string",
          InstanceState = list(
            Code = 123,
            Name = "pending"|"running"|"shutting-down"|"terminated"|"stopping"|"stopped"
          ),
          InstanceStatus = list(
            Details = list(
              list(
                ImpairedSince = as.POSIXct(
                  "2015-01-01"
                ),
                Name = "reachability",
                Status = "passed"|"failed"|"insufficient-data"|"initializing"
              )
            ),
            Status = "ok"|"impaired"|"insufficient-data"|"not-applicable"|"initializing"
          ),
          SystemStatus = list(
            Details = list(
              list(
                ImpairedSince = as.POSIXct(
                  "2015-01-01"
                ),
                Name = "reachability",
                Status = "passed"|"failed"|"insufficient-data"|"initializing"
              )
            ),
            Status = "ok"|"impaired"|"insufficient-data"|"not-applicable"|"initializing"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instance_status(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      InstanceIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string",
      DryRun = TRUE|FALSE,
      IncludeAllInstances = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the current status of the specified instance.
    svc$describe_instance_status(
      InstanceIds = list(
        "i-1234567890abcdef0"
      )
    )

    ## End(Not run)

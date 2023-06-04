<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_instance_event_windows</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified event windows or all event windows

### Description

Describes the specified event windows or all event windows.

If you specify event window IDs, the output includes information for
only the specified event windows. If you specify filters, the output
includes information for only those event windows that meet the filter
criteria. If you do not specify event windows IDs or filters, the output
includes information for all event windows, which can affect
performance. We recommend that you use pagination to ensure that the
operation returns quickly and successfully.

For more information, see [Define event windows for scheduled
events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_instance_event_windows(DryRun, InstanceEventWindowIds,
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_instance_event_windows_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instance_event_windows_:_InstanceEventWindowIds">InstanceEventWindowIds</code></td>
<td><p>The IDs of the event windows.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_instance_event_windows_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>dedicated-host-id</code> - The event windows associated
with the specified Dedicated Host ID.</p></li>
<li><p><code>event-window-name</code> - The event windows associated
with the specified names.</p></li>
<li><p><code>instance-id</code> - The event windows associated with the
specified instance ID.</p></li>
<li><p><code>instance-tag</code> - The event windows associated with the
specified tag and value.</p></li>
<li><p><code>instance-tag-key</code> - The event windows associated with
the specified tag key, regardless of the value.</p></li>
<li><p><code>instance-tag-value</code> - The event windows associated
with the specified tag value, regardless of the key.</p></li>
<li><p><code style="white-space: pre;">⁠tag:&lt;key&gt;⁠</code> - The
key/value combination of a tag assigned to the event window. Use the tag
key in the filter name and the tag value as the filter value. For
example, to find all resources that have a tag with the key
<code>Owner</code> and the value <code>CMX</code>, specify
<code>tag:Owner</code> for the filter name and <code>CMX</code> for the
filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the event
window. Use this filter to find all event windows that have a tag with a
specific key, regardless of the tag value.</p></li>
<li><p><code>tag-value</code> - The value of a tag assigned to the event
window. Use this filter to find all event windows that have a tag with a
specific value, regardless of the tag key.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instance_event_windows_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value. This value can be between 20 and 500. You
cannot specify this parameter and the event window IDs parameter in the
same call.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_instance_event_windows_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceEventWindows = list(
        list(
          InstanceEventWindowId = "string",
          TimeRanges = list(
            list(
              StartWeekDay = "sunday"|"monday"|"tuesday"|"wednesday"|"thursday"|"friday"|"saturday",
              StartHour = 123,
              EndWeekDay = "sunday"|"monday"|"tuesday"|"wednesday"|"thursday"|"friday"|"saturday",
              EndHour = 123
            )
          ),
          Name = "string",
          CronExpression = "string",
          AssociationTarget = list(
            InstanceIds = list(
              "string"
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            DedicatedHostIds = list(
              "string"
            )
          ),
          State = "creating"|"deleting"|"active"|"deleted",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instance_event_windows(
      DryRun = TRUE|FALSE,
      InstanceEventWindowIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )

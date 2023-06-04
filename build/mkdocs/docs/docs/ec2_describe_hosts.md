<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_hosts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Dedicated Hosts or all your Dedicated Hosts

### Description

Describes the specified Dedicated Hosts or all your Dedicated Hosts.

The results describe only the Dedicated Hosts in the Region you're
currently using. All listed instances consume capacity on your Dedicated
Host. Dedicated Hosts that have recently been released are listed with
the state `released`.

### Usage

    ec2_describe_hosts(Filter, HostIds, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_hosts_:_Filter">Filter</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>auto-placement</code> - Whether auto-placement is enabled
or disabled (<code>on</code> | <code>off</code>).</p></li>
<li><p><code>availability-zone</code> - The Availability Zone of the
host.</p></li>
<li><p><code>client-token</code> - The idempotency token that you
provided when you allocated the host.</p></li>
<li><p><code>host-reservation-id</code> - The ID of the reservation
assigned to this host.</p></li>
<li><p><code>instance-type</code> - The instance type size that the
Dedicated Host is configured to support.</p></li>
<li><p><code>state</code> - The allocation state of the Dedicated Host
(<code>available</code> | <code>under-assessment</code> |
<code>permanent-failure</code> | <code>released</code> |
<code>released-permanent-failure</code>).</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_hosts_:_HostIds">HostIds</code></td>
<td><p>The IDs of the Dedicated Hosts. The IDs are used for targeted
instance launches.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_hosts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results can be seen by sending another
request with the returned <code>nextToken</code> value. This value can
be between 5 and 500. If <code>maxResults</code> is given a larger value
than 500, you receive an error.</p>
<p>You cannot specify this parameter and the host IDs parameter in the
same request.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_hosts_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Hosts = list(
        list(
          AutoPlacement = "on"|"off",
          AvailabilityZone = "string",
          AvailableCapacity = list(
            AvailableInstanceCapacity = list(
              list(
                AvailableCapacity = 123,
                InstanceType = "string",
                TotalCapacity = 123
              )
            ),
            AvailableVCpus = 123
          ),
          ClientToken = "string",
          HostId = "string",
          HostProperties = list(
            Cores = 123,
            InstanceType = "string",
            InstanceFamily = "string",
            Sockets = 123,
            TotalVCpus = 123
          ),
          HostReservationId = "string",
          Instances = list(
            list(
              InstanceId = "string",
              InstanceType = "string",
              OwnerId = "string"
            )
          ),
          State = "available"|"under-assessment"|"permanent-failure"|"released"|"released-permanent-failure"|"pending",
          AllocationTime = as.POSIXct(
            "2015-01-01"
          ),
          ReleaseTime = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          HostRecovery = "on"|"off",
          AllowsMultipleInstanceTypes = "on"|"off",
          OwnerId = "string",
          AvailabilityZoneId = "string",
          MemberOfServiceLinkedResourceGroup = TRUE|FALSE,
          OutpostArn = "string",
          HostMaintenance = "on"|"off"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_hosts(
      Filter = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      HostIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )

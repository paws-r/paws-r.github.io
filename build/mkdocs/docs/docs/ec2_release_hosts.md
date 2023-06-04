<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_release_hosts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## When you no longer want to use an On-Demand Dedicated Host it can be released

### Description

When you no longer want to use an On-Demand Dedicated Host it can be
released. On-Demand billing is stopped and the host goes into `released`
state. The host ID of Dedicated Hosts that have been released can no
longer be specified in another request, for example, to modify the host.
You must stop or terminate all instances on a host before it can be
released.

When Dedicated Hosts are released, it may take some time for them to
stop counting toward your limit and you may receive capacity errors when
trying to allocate new Dedicated Hosts. Wait a few minutes and then try
again.

Released hosts still appear in a `describe_hosts` response.

### Usage

    ec2_release_hosts(HostIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_release_hosts_:_HostIds">HostIds</code></td>
<td><p>[required] The IDs of the Dedicated Hosts to release.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Successful = list(
        "string"
      ),
      Unsuccessful = list(
        list(
          Error = list(
            Code = "string",
            Message = "string"
          ),
          ResourceId = "string"
        )
      )
    )

### Request syntax

    svc$release_hosts(
      HostIds = list(
        "string"
      )
    )

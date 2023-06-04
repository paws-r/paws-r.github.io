<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_resources_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get counts of Proton resources

### Description

Get counts of Proton resources.

For infrastructure-provisioning resources (environments, services,
service instances, pipelines), the action returns staleness counts. A
resource is stale when it's behind the recommended version of the Proton
template that it uses and it needs an update to become current.

The action returns staleness counts (counts of resources that are
up-to-date, behind a template major version, or behind a template minor
version), the total number of resources, and the number of resources
that are in a failed state, grouped by resource type. Components,
environments, and service templates return less information - see the
`components`, `environments`, and `serviceTemplates` field descriptions.

For context, the action also returns the total number of each type of
Proton template in the Amazon Web Services account.

For more information, see [Proton
dashboard](https://docs.aws.amazon.com/proton/latest/userguide/monitoring-dashboard.html)
in the *Proton User Guide*.

### Usage

    proton_get_resources_summary()

### Value

A list with the following syntax:

    list(
      counts = list(
        components = list(
          behindMajor = 123,
          behindMinor = 123,
          failed = 123,
          total = 123,
          upToDate = 123
        ),
        environmentTemplates = list(
          behindMajor = 123,
          behindMinor = 123,
          failed = 123,
          total = 123,
          upToDate = 123
        ),
        environments = list(
          behindMajor = 123,
          behindMinor = 123,
          failed = 123,
          total = 123,
          upToDate = 123
        ),
        pipelines = list(
          behindMajor = 123,
          behindMinor = 123,
          failed = 123,
          total = 123,
          upToDate = 123
        ),
        serviceInstances = list(
          behindMajor = 123,
          behindMinor = 123,
          failed = 123,
          total = 123,
          upToDate = 123
        ),
        serviceTemplates = list(
          behindMajor = 123,
          behindMinor = 123,
          failed = 123,
          total = 123,
          upToDate = 123
        ),
        services = list(
          behindMajor = 123,
          behindMinor = 123,
          failed = 123,
          total = 123,
          upToDate = 123
        )
      )
    )

### Request syntax

    svc$get_resources_summary()

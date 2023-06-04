<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_blueprints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of available instance images, or blueprints

### Description

Returns the list of available instance images, or *blueprints*. You can
use a blueprint to create a new instance already running a specific
operating system, as well as a preinstalled app or development stack.
The software each instance is running depends on the blueprint image you
choose.

Use active blueprints when creating new instances. Inactive blueprints
are listed to support customers with existing instances and are not
necessarily available to create new instances. Blueprints are marked
inactive when they become outdated due to operating system updates or
new application releases.

### Usage

    lightsail_get_blueprints(includeInactive, pageToken, appCategory)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_blueprints_:_includeInactive">includeInactive</code></td>
<td><p>A Boolean value that indicates whether to include inactive
(unavailable) blueprints in the response of your request.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_blueprints_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial <code>get_blueprints</code>
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_blueprints_:_appCategory">appCategory</code></td>
<td><p>Returns a list of blueprints that are specific to Lightsail for
Research.</p>
<p>You must use this parameter to view Lightsail for Research
blueprints.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      blueprints = list(
        list(
          blueprintId = "string",
          name = "string",
          group = "string",
          type = "os"|"app",
          description = "string",
          isActive = TRUE|FALSE,
          minPower = 123,
          version = "string",
          versionCode = "string",
          productUrl = "string",
          licenseUrl = "string",
          platform = "LINUX_UNIX"|"WINDOWS",
          appCategory = "LfR"
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_blueprints(
      includeInactive = TRUE|FALSE,
      pageToken = "string",
      appCategory = "LfR"
    )

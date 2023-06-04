<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_create_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions

### Description

Creates a new application that is the top-level node in a hierarchy of
related cloud resource abstractions.

### Usage

    appregistry_create_application(name, description, tags, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appregistry_create_application_:_name">name</code></td>
<td><p>[required] The name of the application. The name must be unique
in the region in which you are creating the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_create_application_:_description">description</code></td>
<td><p>The description of the application.</p></td>
</tr>
<tr class="odd">
<td><code id="appregistry_create_application_:_tags">tags</code></td>
<td><p>Key-value pairs you can use to associate with the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_create_application_:_clientToken">clientToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If you retry a request that completed successfully using
the same client token and the same parameters, the retry succeeds
without performing any further actions. If you retry a successful
request using the same client token, but one or more of the parameters
are different, the retry fails.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      application = list(
        id = "string",
        arn = "string",
        name = "string",
        description = "string",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_application(
      name = "string",
      description = "string",
      tags = list(
        "string"
      ),
      clientToken = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_gui_session_access_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates two URLs that are used to access a virtual computer’s graphical user interface (GUI) session

### Description

Creates two URLs that are used to access a virtual computer’s graphical
user interface (GUI) session. The primary URL initiates a web-based NICE
DCV session to the virtual computer's application. The secondary URL
initiates a web-based NICE DCV session to the virtual computer's
operating session.

Use `start_gui_session` to open the session.

### Usage

    lightsail_create_gui_session_access_details(resourceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_gui_session_access_details_:_resourceName">resourceName</code></td>
<td><p>[required] The resource name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceName = "string",
      status = "startExpired"|"notStarted"|"started"|"starting"|"stopped"|"stopping"|"settingUpInstance"|"failedInstanceCreation"|"failedStartingGUISession"|"failedStoppingGUISession",
      percentageComplete = 123,
      failureReason = "string",
      sessions = list(
        list(
          name = "string",
          url = "string",
          isPrimary = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$create_gui_session_access_details(
      resourceName = "string"
    )

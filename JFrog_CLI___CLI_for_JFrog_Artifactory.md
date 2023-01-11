::: {#main-content .wiki-content .group}
::: contentLayout2
::: {.columnLayout .two-right-sidebar layout="two-right-sidebar"}
::: {.cell .normal data-type="normal"}
::: innerCell
## Overview {#CLIforJFrogArtifactory-Overview}

This page describes how to use JFrog CLI with JFrog Artifactory.

Read more about JFrog CLI
[here](https://www.jfrog.com/confluence/display/CLI/JFrog+CLI).

\

::: wiki-content
### Environment Variables {#CLIforJFrogArtifactory-EnvironmentVariables}

The Artifactory upload command makes use of the following environment
variable:

::: table-wrap
+--------------------------------+-------------------------------------+
| ##### Variable Name {#CLIfor   | **Description**                     |
| JFrogArtifactory-VariableName} |                                     |
+--------------------------------+-------------------------------------+
| ##### **JFROG_CLI_MIN          | \[Default: 10\]                     |
| _CHECKSUM_DEPLOY_SIZE_KB** {#C |                                     |
| LIforJFrogArtifactory-JFROG_CL | Minimum file size in KB for which   |
| I_MIN_CHECKSUM_DEPLOY_SIZE_KB} | JFrog CLI performs checksum deploy  |
|                                | optimization.                       |
+--------------------------------+-------------------------------------+
| #                              | Configured Artifactory server ID    |
| #### **JFROG_CLI_EXTRACTORS_RE | (configured by the \"jfrog c add    |
| MOTE** {#CLIforJFrogArtifactor | command\") and repository name from |
| y-JFROG_CLI_EXTRACTORS_REMOTE} | which to download the jar needed by |
|                                | the \"jf mvn\" and \"jf gradle\"    |
|                                | commands. This environment          |
|                                | variable's value format should be   |
|                                | \<server ID\>/\<repo name\>. The    |
|                                | repository should proxy             |
|                                | [https://releases.jfrog.io          |
|                                | /artifactory/oss-release-local](htt |
|                                | ps://releases.jfrog.io/artifactory/ |
|                                | oss-release-local){.external-link}. |
+--------------------------------+-------------------------------------+
| ##### [**[JF                   | [\[Default: ]{.s                    |
| ROG_CLI_DEPENDENCIES_DIR]{.s1} | 1}[\$JFROG_CLI_HOME_DIR/dependencie |
| **]{style="color: rgb(0,128,0) | s]{style="letter-spacing: 0.0px;"}[ |
| ;"} {#CLIforJFrogArtifactory-J | \]]{style="letter-spacing: 0.0px;"} |
| FROG_CLI_DEPENDENCIES_DIR .p1} |                                     |
|                                | [Defines the directory to which     |
|                                | JFrog CLI\'s internal dependencies  |
|                                | are downloaded.]{.s1}               |
+--------------------------------+-------------------------------------+
| ##### **JFROG_CLI_REP          | [\[Default: true\]]{.s1}            |
| ORT_USAGE** {#CLIforJFrogArtif |                                     |
| actory-JFROG_CLI_REPORT_USAGE} | [ ]{.s1}Set to false to block JFrog |
|                                | CLI from sending usage statistics   |
|                                | to Artifactory.                     |
+--------------------------------+-------------------------------------+
| ##### **[JFROG_CLI_BUILD_NAM   | [Build name to be used by commands  |
| E]{.s1}** {#CLIforJFrogArtifac | which expect a build name, unless   |
| tory-JFROG_CLI_BUILD_NAME .p1} | sent as a command argument or       |
|                                | option.]{.s1}                       |
+--------------------------------+-------------------------------------+
| ##                             | [Build number to be used by         |
| ### **[JFROG_CLI_BUILD_NUMBER] | commands which expect a build       |
| {.s1}** {#CLIforJFrogArtifacto | number, unless sent as a command    |
| ry-JFROG_CLI_BUILD_NUMBER .p1} | argument or option.]{.s1}           |
+--------------------------------+-------------------------------------+
| ####                           | [JFrog project key to be used by    |
| # **[JFROG_CLI_BUILD_PROJECT]{ | commands which expect build name    |
| .s1}** {#CLIforJFrogArtifactor | and build number. Determines the    |
| y-JFROG_CLI_BUILD_PROJECT .p1} | project of the published            |
|                                | build.  ]{.s1}                      |
+--------------------------------+-------------------------------------+
| ##### **[JFROG_CLI_BUILD_U     | [Sets the CI server build URL in    |
| RL]{.s1}** {#CLIforJFrogArtifa | the build-info. The \"jf rt         |
| ctory-JFROG_CLI_BUILD_URL .p1} | build-publish\" command uses the    |
|                                | value of this environment variable, |
|                                | unless the \--build-url command     |
|                                | option is sent.]{.s1}               |
+--------------------------------+-------------------------------------+
| ##### **[JFROG_CLI_ENV_EXCLUDE | [\[Default:                         |
| ]{.s1}** {#CLIforJFrogArtifact | \*passwo                            |
| ory-JFROG_CLI_ENV_EXCLUDE .p1} | rd\*;\*secret\*;\*key\*;\*token\*\] |
|                                | ]{.s1}                              |
|                                |                                     |
|                                | [ List of case insensitive patterns |
|                                | in the form of                      |
|                                | \"value1;value2;\...\". Environment |
|                                | variables match those patterns will |
|                                | be excluded. This environment       |
|                                | variable is used by the \"jf rt     |
|                                | build-publish\" command, in case    |
|                                | the \--env-exclude command option   |
|                                | is not sent.]{.s1}                  |
+--------------------------------+-------------------------------------+
| #####                          | \[Default: false\]                  |
|  **JFROG_CLI_TRANSITIVE_DOWNLO |                                     |
| AD_EXPERIMENTAL** {#CLIforJFro | [Used by the \"jf rt download\"     |
| gArtifactory-JFROG_CLI_TRANSIT | command. Set to true to download    |
| IVE_DOWNLOAD_EXPERIMENTAL .p1} | artifacts also from remote          |
|                                | repositories. This feature is       |
|                                | experimental and available on       |
|                                | Artifactory version 7.17.0 or       |
|                                | higher.                             |
|                                | \`]{style="letter-spacing: 0.0px;"} |
+--------------------------------+-------------------------------------+
:::

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
**Read about additional environment variables at the [Welcome to JFrog
CLI](https://www.jfrog.com/confluence/display/CLI/Welcome+to+JFrog+CLI#WelcometoJFrogCLI-EnvironmentVariables)
page.**
:::
:::

\
:::

### Authentication {#CLIforJFrogArtifactory-Authentication}

When used with Artifactory, JFrog CLI offers several means of
authentication: JFrog CLI does not support accessing  Artifactory
without authentication. 

#### Authenticating with Username and Password / API Key {#CLIforJFrogArtifactory-AuthenticatingwithUsernameandPassword/APIKey}

To authenticate yourself using your JFrog login credentials, either
configure your credentials once using the *[jf c
add]{style="font-family: SFMono-Medium , SF Mono , Segoe UI Mono , Roboto Mono , Ubuntu Mono , Menlo , Courier , monospace;"}* command [or
provide the following option to each
command.]{style="letter-spacing: 0.0px;"}

::: table-wrap
  Command option   Description 
  ---------------- -----------------------------------------------------------------------
  \--url           JFrog Artifactory API endpoint URL. It usually ends with /artifactory
  \--user          JFrog username
  \--password      JFrog password or API key
:::

[For enhanced security, when JFrog CLI is configured to use username and
password / API key, it automatically generates an access token to
authenticates with Artifactory. The generated access token is valid for
one hour only. JFrog CLI automatically refreshed the token before it
expires. The *`jfrog c add`* command allows disabling this
functionality. This feature is currently not supported by commands which
use external tools or package managers or work with JFrog
Distribution. ]{style="letter-spacing: 0.0px;"}

#### Authenticating with an Access Token {#CLIforJFrogArtifactory-AuthenticatingwithanAccessToken}

To authenticate yourself using an Artifactory Access Token, either
configure your Access Token once using the *jf c add* command [or
provide the following option to each
command.]{style="letter-spacing: 0.0px;"}

::: table-wrap
  Command option    Description 
  ----------------- -----------------------------------------------------------------------
  \--url            JFrog Artifactory API endpoint URL. It usually ends with /artifactory
  \--access-token   JFrog access token
:::

#### Authenticating with RSA Keys {#CLIforJFrogArtifactory-AuthenticatingwithRSAKeys}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[Currently, authentication with RSA keys is not supported when working
with external package managers and build tools (Maven, Gradle, Npm,
Docker, Go and NuGet) or with the cUrl
integration.]{style="color: rgb(34,34,34);"}[ ]{style="color: rgb(34,34,34);"}
:::
:::

[From version 4.4, Artifactory supports SSH authentication using RSA
public and private keys. To authenticate yourself to Artifactory using
RSA keys, execute the following
instructions:]{style="letter-spacing: 0.0px;"}

-   Enable SSH authentication as described in [Configuring
    SSH](https://www.jfrog.com/confluence/display/RTF/SSH+Integration#SSHIntegration-ConfiguringSSH). 

-   Configure your Artifactory URL to have the following
    format: `ssh://[host]:[port] `\
    There are two ways to do this:\

    -   For each command, use the `--url` command option.
    -   Specify the Artifactory URL in the correct format using
        the *`jfrog c add`* command.

    ::: {.confluence-information-macro .confluence-information-macro-note}
    Don\'t include your Artifactory context URL

    []{.aui-icon .aui-icon-small .aui-iconfont-warning
    .confluence-information-macro-icon}

    ::: confluence-information-macro-body
    Make sure that the \[host\] component of the URL only includes the
    host name or the IP, but not your Artifactory context URL. 
    :::
    :::

-   Configure the path to your SSH key file. There are two ways to do
    this:
    -   For each command, use the `--ssh-key-path` command option.
    -   Specify the path using the *`jfrog c add`* command.

#### Authenticating using Client Certificates (mTLS) {#CLIforJFrogArtifactory-AuthenticatingusingClientCertificates(mTLS)}

[From Artifactory release 7.38.4, you can authenticate users using a
client client certificates
(]{style="color: rgb(23,43,77);"}[mTLS](https://en.wikipedia.org/wiki/Mutual_authentication#mTLS){.external-link})[.
To do so will require a reverse proxy and some setup on the front
reverse proxy (Nginx). Read about how to set this up
[here](https://www.jfrog.com/confluence/display/JFROG/HTTP+Settings#HTTPSettings-ConfiguringaReverseProxytoSupportmTLSconfigreverseproxy).]{style="color: rgb(23,43,77);"}

[To authenticate with the proxy using a client certificate, either
configure your certificate once using the [jf c
add]{style="font-family: SFMono-Medium , SF Mono , Segoe UI Mono , Roboto Mono , Ubuntu Mono , Menlo , Courier , monospace;"} command
or use the
\--]{style="letter-spacing: 0.0px;"}`client-cert-path`{style="letter-spacing: 0.0px;"}[
and ]{style="letter-spacing: 0.0px;"}`--client-cert-ket-path`{style="letter-spacing: 0.0px;"}[
command options with each command.\
]{style="letter-spacing: 0.0px;"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
Authentication using client certificates (mTLS) is not supported by
commands which integrate with package managers. 
:::
:::

\

[Not Using a Public CA (Certificate
Authority)?]{style="color: rgb(0,100,0);font-weight: 600;letter-spacing: -0.003em;"}

[This section is relevant for you, if you\'re not using a public CA
(Certificate Authority) to issue the SSL certificate used to connect to
your Artifactory domain. You may not be using a public CA either because
you\'re using self-signed certificates or you\'re running your own PKI
services in-house (often by using a Microsoft CA).
]{style="letter-spacing: 0.0px;"}

[In this case, you\'ll need to make those certificates available for
JFrog CLI, by placing them inside
the ]{style="letter-spacing: 0.0px;"}*`security/certs`{style="letter-spacing: 0.0px;"}*[ directory,
which is under JFrog CLI\'s home directory. By default, the home
directory is 
]{style="letter-spacing: 0.0px;"}*`~/.jfrog`{style="letter-spacing: 0.0px;"}*[,
but it can be also set using the
]{style="letter-spacing: 0.0px;"}[[*JFROG_CLI_HOME_DIR*]{style="font-family: SFMono-Medium , SF Mono , Segoe UI Mono , Roboto Mono , Ubuntu Mono , Menlo , Courier , monospace;"}]{style="letter-spacing: 0.0px;"}[
environment variable.]{style="letter-spacing: 0.0px;"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
1.  The supported certificate format is PEM.
2.  Some commands support the \--insecure-tls option, which skips the
    TLS certificates verification.
3.  Before version 1.37.0, JFrog CLI expected the certificates to be
    located directly under
    the *`security `{style="letter-spacing: 0.0px;"}*[directory. JFrog
    CLI will automatically move the certificates to the new
    directory when installing version 1.37.0 or above. Downgrading back
    to an older version requires replacing the configuration directory
    manually. You\'ll find a backup if the old configuration
    under *`.jfrog/backup`*  ]{style="letter-spacing: 0.0px;"}
:::
:::
:::
:::

::: {.cell .aside data-type="aside"}
::: innerCell
::: {.confluence-information-macro .has-no-icon .confluence-information-macro-information}
Page Contents

::: confluence-information-macro-body
::: {.toc-macro .rbtoc1666078073490}
-   [Overview](#CLIforJFrogArtifactory-Overview)
    -   [Environment
        Variables](#CLIforJFrogArtifactory-EnvironmentVariables)
    -   [Authentication](#CLIforJFrogArtifactory-Authentication)
-   [Storing Symlinks in
    Artifactory](#CLIforJFrogArtifactory-StoringSymlinksinArtifactory)
-   [Using Placeholders](#CLIforJFrogArtifactory-UsingPlaceholders)
-   [General Commands](#CLIforJFrogArtifactory-GeneralCommands)
    -   [Verifying Artifactory is
        Accessible](#CLIforJFrogArtifactory-VerifyingArtifactoryisAccessible)
    -   [Uploading Files](#CLIforJFrogArtifactory-UploadingFiles)
    -   [Downloading Files](#CLIforJFrogArtifactory-DownloadingFiles)
    -   [Copying Files](#CLIforJFrogArtifactory-CopyingFiles)
    -   [Moving Files](#CLIforJFrogArtifactory-MovingFiles)
    -   [Deleting Files](#CLIforJFrogArtifactory-DeletingFiles)
    -   [Searching Files](#CLIforJFrogArtifactory-SearchingFiles)
    -   [Setting Properties on
        Files](#CLIforJFrogArtifactory-SettingPropertiesonFiles)
    -   [Deleting Properties from
        Files](#CLIforJFrogArtifactory-DeletingPropertiesfromFiles)
    -   [Creating Access
        Tokens](#CLIforJFrogArtifactory-CreatingAccessTokens)
    -   [Cleaning Up Unreferenced Files from a Git LFS
        Repository](#CLIforJFrogArtifactory-CleaningUpUnreferencedFilesfromaGitLFSRepository)
    -   [Running cUrl](#CLIforJFrogArtifactory-RunningcUrl)
-   [Build Integration](#CLIforJFrogArtifactory-BuildIntegration)
    -   [Overview](#CLIforJFrogArtifactory-Overview.1)
    -   [Collecting
        Build-Info](#CLIforJFrogArtifactory-CollectingBuild-Info)
    -   [Publishing
        Build-Info](#CLIforJFrogArtifactory-PublishingBuild-Info)
    -   [Aggregating Published
        Builds](#CLIforJFrogArtifactory-AggregatingPublishedBuilds)
    -   [Promoting a Build](#CLIforJFrogArtifactory-PromotingaBuild)
    -   [Cleaning up the
        Build](#CLIforJFrogArtifactory-CleaninguptheBuild)
    -   [Discarding Old Builds from
        Artifactory](#CLIforJFrogArtifactory-DiscardingOldBuildsfromArtifactory)
-   [Package Managers
    Integration](#CLIforJFrogArtifactory-PackageManagersIntegration)
    -   [Running Maven
        Builds](#CLIforJFrogArtifactory-RunningMavenBuilds)
    -   [Running Gradle
        Builds](#CLIforJFrogArtifactory-RunningGradleBuilds)
    -   [Running Builds with
        MSBuild](#CLIforJFrogArtifactory-RunningBuildswithMSBuild)
    -   [Managing Docker
        Images](#CLIforJFrogArtifactory-ManagingDockerImages)
    -   [Building Npm Packages Using the Npm
        Client](#CLIforJFrogArtifactory-BuildingNpmPackagesUsingtheNpmClient)
    -   [Building Npm Packages Using the Yarn
        Client](#CLIforJFrogArtifactory-BuildingNpmPackagesUsingtheYarnClient)
    -   [Building Go
        Packages](#CLIforJFrogArtifactory-BuildingGoPackages)
    -   [Building Python
        Packages](#CLIforJFrogArtifactory-BuildingPythonPackages)
    -   [Building NuGet
        Packages](#CLIforJFrogArtifactory-BuildingNuGetPackages)
    -   [Packaging and Publishing Terraform
        Modules](#CLIforJFrogArtifactory-PackagingandPublishingTerraformModules)
-   [Managing Users and
    Groups](#CLIforJFrogArtifactory-ManagingUsersandGroups)
    -   [Creating Users](#CLIforJFrogArtifactory-CreatingUsers)
    -   [Deleting Users](#CLIforJFrogArtifactory-DeletingUsers)
    -   [Creating Groups](#CLIforJFrogArtifactory-CreatingGroups)
    -   [Adding Users to
        Groups](#CLIforJFrogArtifactory-AddingUserstoGroups)
    -   [Deleting Groups](#CLIforJFrogArtifactory-DeletingGroups)
-   [Managing
    Repositories](#CLIforJFrogArtifactory-ManagingRepositories)
    -   [Creating or Configuration
        Template](#CLIforJFrogArtifactory-CreatingorConfigurationTemplate)
    -   [Creating / Updating
        Repositories](#CLIforJFrogArtifactory-Creating/UpdatingRepositories)
    -   [Deleting
        Repositories](#CLIforJFrogArtifactory-DeletingRepositories)
-   [Managing
    Replications](#CLIforJFrogArtifactory-ManagingReplications)
    -   [Creating a Configuration
        Template](#CLIforJFrogArtifactory-CreatingaConfigurationTemplate)
    -   [Creating Replication
        Jobs](#CLIforJFrogArtifactory-CreatingReplicationJobs)
    -   [Deleting Replication
        jobs](#CLIforJFrogArtifactory-DeletingReplicationjobs)
-   [Managing Permission
    Targets](#CLIforJFrogArtifactory-ManagingPermissionTargets)
    -   [Creating a Configuration
        Template](#CLIforJFrogArtifactory-CreatingaConfigurationTemplate.1)
    -   [Creating / Updating Permission
        Targets](#CLIforJFrogArtifactory-Creating/UpdatingPermissionTargets)
    -   [Deleting Permission
        Targets](#CLIforJFrogArtifactory-DeletingPermissionTargets)
-   [Using File Specs](#CLIforJFrogArtifactory-UsingFileSpecs)
    -   [File Spec Schemas](#CLIforJFrogArtifactory-FileSpecSchemas)
    -   [Schema Validation](#CLIforJFrogArtifactory-SchemaValidation)
-   [Downloading the Maven and Gradle Extractor
    JARs](#CLIforJFrogArtifactory-DownloadingtheMavenandGradleExtractorJARs)
:::
:::
:::
:::
:::
:::

::: {.columnLayout .single layout="single"}
::: {.cell .normal data-type="normal"}
::: innerCell

------------------------------------------------------------------------

## Storing Symlinks in Artifactory** ** {#CLIforJFrogArtifactory-StoringSymlinksinArtifactory}

JFrog CLI lets you upload and download artifacts from your local
file-system to Artifactory, this also includes uploading symlinks (soft
links).

Symlinks are stored in Artifactory as files with a zero size, with the
following properties:\
**symlink.dest** - The actual path on the original filesystem to which
the symlink points\
**symlink.destsha1** - the SHA1 checksum of the value in
the **symlink.dest** property

To upload symlinks, the [upload
command](#CLIforJFrogArtifactory-UploadingFiles) should be executed with
the `--symlinks` option set to true. 

[When downloading symlinks stored in Artifactory, the CLI can verify
that the file to which the symlink points actually exists and that it
has the correct SHA1 checksum. To add this validation, you should use
the ]{style="letter-spacing: 0.0px;"}`--validate-symlinks`{style="letter-spacing: 0.0px;"}[ option
with the ]{style="letter-spacing: 0.0px;"}[download
command](#CLIforJFrogArtifactory-DownloadingFiles)[.]{style="letter-spacing: 0.0px;"}

------------------------------------------------------------------------

## Using Placeholders {#CLIforJFrogArtifactory-UsingPlaceholders}

The JFrog CLI offers enormous flexibility in how you **download,
upload**, **copy**, or **move** files through use of wildcard or regular
expressions with placeholders.

Any wildcard enclosed in parenthesis in the source path can be matched
with a corresponding placeholder in the target path to determine the
name of the artifact once uploaded.

#### Examples {#CLIforJFrogArtifactory-Examples}

##### **Example 1: Upload all files to the target repository** {#CLIforJFrogArtifactory-Example1:Uploadallfilestothetargetrepository}

For each .tgz file in the source directory, create a corresponding
directory with the same name in the target repository and upload it
there. For example, a file named *`froggy.tgz`* should be uploaded
to *`my-local-rep/froggy`*. (*`froggy `*will be created a folder in
Artifactory).

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt u "(*).tgz" my-local-repo/{1}/ --recursive=false
```
:::
:::

##### **Example 2: Upload all files sharing the same prefix to the target repository** {#CLIforJFrogArtifactory-Example2:Uploadallfilessharingthesameprefixtothetargetrepository}

Upload all files whose name begins with \"frog\" to
folder *`frogfiles`* in the target repository, but append its name with
the text \"-up\". For example, a file called *`froggy.tgz`* should be
renamed *`froggy.tgz-up.`*

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf u "(frog*)" my-local-repo/frogfiles/{1}-up --recursive=false
```
:::
:::

##### **Example 3: Upload all files to corresponding directories according to extension type** {#CLIforJFrogArtifactory-Example3:Uploadallfilestocorrespondingdirectoriesaccordingtoextensiontype}

Upload all files in the current directory to
the *my-local-repo* repository and place them in directories which match
their file extensions.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt u "(*).(*)" my-local-repo/{2}/{1}.{2} --recursive=false
```
:::
:::

##### **Example 4: Copy all zip files to target respository and append with an extension.** {#CLIforJFrogArtifactory-Example4:Copyallzipfilestotargetrespositoryandappendwithanextension.}

Copy all zip files under /rabbit in the *`source-frog-repo`* repository
into the same path in the *`target-frog-repo`* repository and append the
copied files\' names with \".cp\".

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt cp "source-frog-repo/rabbit/(*.zip)" target-frog-repo/rabbit/{1}.cp
```
:::
:::

------------------------------------------------------------------------

## General Commands {#CLIforJFrogArtifactory-GeneralCommands}

The following sections describe the commands available in the JFrog CLI
for use with Artifactory. 

### Verifying Artifactory is Accessible {#CLIforJFrogArtifactory-VerifyingArtifactoryisAccessible}

This command can be used to verify that Artifactory is accessible by
sending an applicative ping to Artifactory.

::: table-wrap
+----------------------------------+----------------------------------+
| ##### Command name {#CLI         | rt ping                          |
| forJFrogArtifactory-Commandname} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIf        | rt p                             |
| orJFrogArtifactory-Abbreviation} |                                  |
+----------------------------------+----------------------------------+
| \                                | \                                |
+----------------------------------+----------------------------------+
| ##### Command options {#CLIfor   | \                                |
| JFrogArtifactory-Commandoptions} |                                  |
+----------------------------------+----------------------------------+
| \--url                           | \[Optional\]                     |
|                                  |                                  |
|                                  | [Artifactory URL.]{.s1}          |
+----------------------------------+----------------------------------+
| \--server-id                     | \[Optional\]                     |
|                                  |                                  |
|                                  | [Server ID configured using the  |
|                                  | *jfrog c add* command. If not    |
|                                  | specified, the default           |
|                                  | configured Artifactory server is |
|                                  | used.]{.s1}                      |
+----------------------------------+----------------------------------+
| \--insecure-tls                  | \[Default: false\]               |
|                                  |                                  |
|                                  | Set to true to skip TLS          |
|                                  | certificates verification.       |
+----------------------------------+----------------------------------+
| ##                               | The command accepts no           |
| ### Command arguments {#CLIforJF | arguments.                       |
| rogArtifactory-Commandarguments} |                                  |
+----------------------------------+----------------------------------+
:::

#### **Examples** {#CLIforJFrogArtifactory-Examples.1}

##### **Example 1** {#CLIforJFrogArtifactory-Example1}

Ping the configured default Artifactory server.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt ping
```
:::
:::

\

##### **Example 2** {#CLIforJFrogArtifactory-Example2}

Ping the configured Artifactory server with ID *rt-server-1*.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt ping --server-id=rt-server-1
```
:::
:::

**\
**

##### **Example 3** {#CLIforJFrogArtifactory-Example3}

Ping the Artifactory server. accessible though the specified URL.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt ping --url=http://my-rt-server.com/artifactory
```
:::
:::

### Uploading Files  {#CLIforJFrogArtifactory-UploadingFiles}

This command is used to upload files to Artifactory.

::: table-wrap
+----------+-----------------------------------------------------------+
| ##       | rt upload                                                 |
| ### Comm |                                                           |
| and name |                                                           |
|  {#CLIfo |                                                           |
| rJFrogAr |                                                           |
| tifactor |                                                           |
| y-Comman |                                                           |
| dname.1} |                                                           |
+----------+-----------------------------------------------------------+
| ###      | rt u                                                      |
| ## Abbre |                                                           |
| viation  |                                                           |
| {#CLIfor |                                                           |
| JFrogArt |                                                           |
| ifactory |                                                           |
| -Abbrevi |                                                           |
| ation.1} |                                                           |
+----------+-----------------------------------------------------------+
| ##### Co | ::: content-wrapper                                       |
| mmand op | ::: {.conflue                                             |
| tions {# | nce-information-macro .confluence-information-macro-note} |
| CLIforJF | []{.aui-icon .aui-icon-small .aui-iconfont-warning        |
| rogArtif | .confluence-information-macro-icon}                       |
| actory-C |                                                           |
| ommandop | ::: confluence-information-macro-body                     |
| tions.1} | When using the \* or ; characters in the upload command   |
|          | options or arguments, make sure to wrap the whole options |
|          | or arguments string in quotes (\") to make sure the \* or |
|          | ; characters are not interpreted as literals.             |
|          | :::                                                       |
|          | :::                                                       |
|          | :::                                                       |
+----------+-----------------------------------------------------------+
| \-       | [\[Optional\] ]{.s1}                                      |
| -archive |                                                           |
|          | [Set to \"zip\" to pack and deploy the files to           |
|          | Artifactory inside a ZIP archive. Currently, the only     |
|          | packaging format supported is zip.]{.s1}                  |
+----------+-----------------------------------------------------------+
| [\-      | \[Optional\]                                              |
| -server- |                                                           |
| id]{.s1} | [Server ID configured using the *jfrog c add* command. If |
|          | not specified, the default configured Artifactory server  |
|          | is used.]{.s1}                                            |
+----------+-----------------------------------------------------------+
| \--spec  | \[Optional\]                                              |
|          |                                                           |
|          | Path to a file spec. For more details, please refer to    |
|          | [Using File                                               |
|          | Specs](#CLIforJFrogArtifactory-UsingFileSpecs).           |
+----------+-----------------------------------------------------------+
| \--s     | [\[Optional\]]{.s1}                                       |
| pec-vars |                                                           |
|          | [List of variables in the form of                         |
|          | \"key1=value1;key2=value2;\...\" to be replaced in the    |
|          | File Spec. In the File Spec, the variables should be used |
|          | as follows: \${key1}.]{.s1}                               |
+----------+-----------------------------------------------------------+
| \--bu    | \[Optional\]                                              |
| ild-name |                                                           |
|          | Build name. For more details, please refer to [Build      |
|          | Integration                                               |
|          | ](https://www.jfrog.com/confluence/display/CLI/CLI+for+JF |
|          | rog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+----------+-----------------------------------------------------------+
| \--buil  | \[Optional\]                                              |
| d-number |                                                           |
|          | Build number. For more details, please refer to [Build    |
|          | Integration                                               |
|          | ](https://www.jfrog.com/confluence/display/CLI/CLI+for+JF |
|          | rog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+----------+-----------------------------------------------------------+
| \-       | \[Optional\]                                              |
| -project |                                                           |
|          | JFrog project key.                                        |
+----------+-----------------------------------------------------------+
| \        | \[Optional\]                                              |
| --module |                                                           |
|          | [Optional module name for the build-info.]{.s1}           |
+----------+-----------------------------------------------------------+
| \--targ  | ::: content-wrapper                                       |
| et-props | \[Optional\]                                              |
|          |                                                           |
|          | A list of Artifactory                                     |
|          | [properties](https://www.jfrog.com/confluen               |
|          | ce/display/RTF/Properties){style="text-decoration:none;"} |
|          | specified as \"key=value\" pairs separated by a           |
|          | semi-colon ( ; ) to be attached to the uploaded files. If |
|          | any key can take several values, then each value is       |
|          | separated by a comma ( , ). For example,                  |
|          | \"key1=value1;key2=value21,value22;key3=value3\".         |
|          | :::                                                       |
+----------+-----------------------------------------------------------+
| \--deb   | \[Optional\]                                              |
|          |                                                           |
|          | Used for Debian packages only. Specifies the              |
|          | distribution/component/architecture of the package. If    |
|          | the the value for distribution, component or architecture |
|          | include a slash. the slash should be escaped with a       |
|          | back-slash.                                               |
+----------+-----------------------------------------------------------+
| \--flat  | ::: content-wrapper                                       |
|          | \[Default: false\]                                        |
|          |                                                           |
|          | If true, files are uploaded to the exact target path      |
|          | specified and their hierarchy in the source file system   |
|          | is ignored.                                               |
|          |                                                           |
|          | If false, files are uploaded to the target path while     |
|          | maintaining their file system hierarchy.                  |
|          |                                                           |
|          | If                                                        |
|          | [placeholders                                             |
|          | ](https://www.jfrog.com/confluence/display/CLI/CLI+for+JF |
|          | rog+Artifactory#CLIforJFrogArtifactory-UsingPlaceholders) |
|          | are used, the value of this option is ignored.            |
|          |                                                           |
|          | ::: {.confluence-inf                                      |
|          | ormation-macro .confluence-information-macro-information} |
|          | JFrog CLI v1                                              |
|          |                                                           |
|          | []{.aui-icon .aui-icon-small .aui-iconfont-info           |
|          | .confluence-information-macro-icon}                       |
|          |                                                           |
|          | ::: confluence-information-macro-body                     |
|          | In JFrog CLI v1, the default value of the \--flat option  |
|          | is true.                                                  |
|          | :::                                                       |
|          | :::                                                       |
|          | :::                                                       |
+----------+-----------------------------------------------------------+
| \--r     | \[Default: true\]                                         |
| ecursive |                                                           |
|          | If true, files are also collected from sub-folders of the |
|          | source directory for upload .                             |
|          |                                                           |
|          | If false, only files specifically in the source directory |
|          | are uploaded.                                             |
+----------+-----------------------------------------------------------+
| \        | \[Default: false\]                                        |
| --regexp |                                                           |
|          | If true, the command will interpret the first argument,   |
|          | which describes the local file-system path of artifacts   |
|          | to upload, as a regular expression.                       |
|          |                                                           |
|          | If false, it will interpret the first argument as a       |
|          | wild-card expression.                                     |
|          |                                                           |
|          | The above also applies for the \--exclusions option.      |
|          |                                                           |
|          | If you have specified that you are using regular          |
|          | expressions, then the beginning of the expression must be |
|          | enclosed in parenthesis. For example:                     |
|          | ***a/b/c/(.\*)/file.zip***                                |
+----------+-----------------------------------------------------------+
| \--ant   | \[Default: false\]                                        |
|          |                                                           |
|          | If true, the command will interpret the first argument,   |
|          | which describes the local file-system path of artifacts   |
|          | to upload, as an ANT pattern.                             |
|          |                                                           |
|          | If false, it will interpret the first argument as a       |
|          | wildcards expression.                                     |
|          |                                                           |
|          | The above also applies for the \--exclusions option.      |
+----------+-----------------------------------------------------------+
| \-       | \[Default: 3\]                                            |
| -threads |                                                           |
|          | The number of parallel threads that should be used to     |
|          | upload where each thread uploads a single artifact at a   |
|          | time.                                                     |
+----------+-----------------------------------------------------------+
| \-       | \[Default: false\]                                        |
| -dry-run |                                                           |
|          | If true, the command only indicates which artifacts would |
|          | have been uploaded                                        |
|          |                                                           |
|          | If false, the command is fully executed and uploads       |
|          | artifacts as specified                                    |
+----------+-----------------------------------------------------------+
| \--      | [\[Default: false\]]{style="color: rgb(34,34,34);"}       |
| symlinks |                                                           |
|          | [If true, the command will preserve the soft links        |
|          | structure in Artifactory. The                             |
|          | **[symlink                                                |
|          | ](#CLIforJFrogArtifactory-StoringSymlinksinArtifactory)** |
|          | file representation will contain the symbolic link and    |
|          | checksum properties.]{style="color: rgb(34,34,34);"}      |
+----------+-----------------------------------------------------------+
| \-       | \[Default: false\]                                        |
| -explode |                                                           |
|          | If true, the command will extract an archive containing   |
|          | multiple artifacts after it is deployed to Artifactory,   |
|          | while maintaining the archive\'s file structure.          |
+----------+-----------------------------------------------------------+
| \--incl  | \[Default: false\]                                        |
| ude-dirs |                                                           |
|          | If true, the source path applies to bottom-chain          |
|          | directories and not only to files. Botton-chain           |
|          | directories are either empty or do not include other      |
|          | directories that match the source path.                   |
+----------+-----------------------------------------------------------+
| \--ex    | [\[Optional\]]{.s1}                                       |
| clusions |                                                           |
|          | [A list of Semicolon-separated exclude patterns.          |
|          | A]{.s1}llows using wildcards, regular expressions or ANT  |
|          | patterns, according to the value of the-*-regexp* and     |
|          | *\--ant* options. Please read the *\--regexp* and         |
|          | *\--ant* options description for more information.        |
+----------+-----------------------------------------------------------+
| \--sync  | \[Optional\]                                              |
| -deletes |                                                           |
|          | [Specific path in Artifactory, under which to sync        |
|          | artifacts after the upload. After the upload, this path   |
|          | will include only the artifacts uploaded during this      |
|          | upload operation. The other files under this path will be |
|          | deleted.]{.s1}                                            |
+----------+-----------------------------------------------------------+
| \--quiet | \[Default: false\]                                        |
|          |                                                           |
|          | If true, the delete confirmation message is skipped.      |
+----------+-----------------------------------------------------------+
| [\--     | [\[Default: false\] ]{.s1}                                |
| fail-no- |                                                           |
| op]{.s1} | [Set to true if you\'d like the command to return exit    |
|          | code 2 in case of no files are affected.]{.s1}            |
+----------+-----------------------------------------------------------+
| \-       | \[Default: 3\]                                            |
| -retries |                                                           |
|          | [Number of upload retries.]{.s1}                          |
+----------+-----------------------------------------------------------+
| \-       | \[Default: 0s\]                                           |
| -retry-w |                                                           |
| ait-time | Number of seconds or milliseconds to wait between         |
|          | retries. The numeric value should either end with s for   |
|          | seconds or ms for milliseconds.                           |
+----------+-----------------------------------------------------------+
| \--      | [\[Default: false\] ]{.s1}                                |
| detailed |                                                           |
| -summary | [Set to true to include a list of the affected files as   |
|          | part of the command output summary.]{.s1}                 |
+----------+-----------------------------------------------------------+
| \--inse  | \[Default: false\]                                        |
| cure-tls |                                                           |
|          | Set to true to skip TLS certificates verification.        |
+----------+-----------------------------------------------------------+
| ####     | The command takes two arguments.                          |
| # Comman |                                                           |
| d argume | In case the \--spec option is used, the commands accepts  |
| nts {#CL | no arguments.                                             |
| IforJFro |                                                           |
| gArtifac |                                                           |
| tory-Com |                                                           |
| mandargu |                                                           |
| ments.1} |                                                           |
+----------+-----------------------------------------------------------+
| Source   | ::: content-wrapper                                       |
| path     | The first argument specifies the local file system path   |
|          | to artifacts which should be uploaded to Artifactory. You |
|          | can specify multiple artifacts by using wildcards or a    |
|          | regular expression as designated by the *`--regexp`*      |
|          | command option. Please read the *\--regexp* option        |
|          | description for more information.                         |
|          | :::                                                       |
+----------+-----------------------------------------------------------+
| Target   | The second argument specifies the target path in          |
| path     | Artifactory in the following format:                      |
|          | ` [repository_name]/[repository_path]`                    |
|          |                                                           |
|          | If the target path ends with a slash, the path is assumed |
|          | to be a folder. For example, if you specify the target as |
|          | \"repo-name/a/b/\", then \"b\" is assumed to be a folder  |
|          | in Artifactory into which files should be uploaded. If    |
|          | there is no terminal slash, the target path is assumed to |
|          | be a file to which the uploaded file should be renamed.   |
|          | For example, if you specify the target as                 |
|          | \"repo-name/a/b\", the uploaded file is renamed to \"b\"  |
|          | in Artifactory.                                           |
|          |                                                           |
|          | For flexibility in specifying the upload path, you can    |
|          | include placeholders in the form of {1}, {2} which are    |
|          | replaced by corresponding tokens in the source path that  |
|          | are enclosed in parenthesis. For more details, please     |
|          | refer to [Using                                           |
|          | Plac                                                      |
|          | eholders](#CLIforJFrogArtifactory-UsingPlaceholders)**.** |
+----------+-----------------------------------------------------------+
:::

#### Examples {#CLIforJFrogArtifactory-Examples.2}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.1}

Upload a file called *`froggy.tgz`* to the root of
the *`my-local-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
 $ jf rt u froggy.tgz my-local-repo
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.1}

Collect all the zip files located under the *build* directory (including
sub-directories), and upload them to the *`my-local-repo`* repository,
under the *`zipFiles`* folder, while maintaining the original names of
the files.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt u "build/*.zip" my-local-repo/zipFiles/
```
:::
:::

##### **Example 3** {#CLIforJFrogArtifactory-Example3.1}

Collect all the zip files located under the *build* directory (including
sub-directories), and upload them to the *`my-local-repo`* repository,
under the *`zipFiles`* folder, while maintaining the original names of
the files. Also delete all files in the *`my-local-repo`* repository,
under the *`zipFiles`* folder, except for the files which were uploaded
by this command.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt u "build/*.zip" my-local-repo/zipFiles/ --sync-deletes="my-local-repo/zipFiles/"
```
:::
:::

##### **Example 4** {#CLIforJFrogArtifactory-Example4}

Collect all files located under the *build* directory (including
sub-directories), and upload them to
the *`my-release-local `*repository, under the *`files`* folder, while
maintaining the original names of the artifacts. Exclude (do not upload)
files, which include *install* as part of their path, and have the
*pack* extension. This example uses a wildcard pattern. See *Example 5*,
which uses regular expressions instead.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt u "build/" my-release-local/files/ --exclusions="*install*pack*"
```
:::
:::

##### **Example 5** {#CLIforJFrogArtifactory-Example5}

Collect all files located under the *build* directory (including
sub-directories), and upload them to
the *`my-release-local`* repository, under the *`files`* folder, while
maintaining the original names of the artifacts. Exclude (do not upload)
files, which include *install* as part of their path, and have
the *pack* extension. This example uses a regular expression.
See *Example 4*, which uses a wildcard pattern instead.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt u "build/" my-release-local/files/ --regexp --exclusions="(.*)install.*pack$"
```
:::
:::

##### **Example 6** {#CLIforJFrogArtifactory-Example6}

Collect all files located under the *build* directory and match the
*\*\*/\*.zip* ANT pattern, and upload them to
the *`my-release-local`* repository, under the *`files`* folder, while
maintaining the original names of the artifacts.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt u "build/**/*.zip" my-release-local/files/ --ant
```
:::
:::

##### **Example 7** {#CLIforJFrogArtifactory-Example7}

Package all files located under the *build* directory (including
sub-directories) into a zip archive named *archive.zip* , and upload the
archive to the *`my-local-repo`* repository,

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt u "build/" my-local-repo/my-archive.zip --archive zip
```
:::
:::

### [Downloading Files]{style="color: rgb(0,100,0);font-size: 16.0px;font-weight: bold;letter-spacing: -0.006em;"} {#CLIforJFrogArtifactory-DownloadingFiles}

This command is used to download files from Artifactory.

::: {.confluence-information-macro .confluence-information-macro-information}
Remote download

[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
By default, the command only downloads files which are cached on the
current Artifactory instance. It does not download files located on
remote Artifactory instances, through remote or virtual repositories. To
allow the command to download files from remote Artifactory instances,
which are proxied by the use of remote repositories, set
the **JFROG_CLI_TRANSITIVE_DOWNLOAD_EXPERIMENTAL** environment variable
to **true**. This functionality requires version 7.17 or above of
Artifactory.

The remote download functionality is supported only on remote
repositories which proxy repositories on remote Artifactory instances.
Downloading through a remote repository which proxies non Artifactory
repositories is not supported.   
:::
:::

::: table-wrap
+-----------+----------------------------------------------------------+
| ####      | rt download                                              |
| # Command |                                                          |
|  name {#C |                                                          |
| LIforJFro |                                                          |
| gArtifact |                                                          |
| ory-Comma |                                                          |
| ndname.2} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | rt dl                                                    |
|  Abbrevia |                                                          |
| tion {#CL |                                                          |
| IforJFrog |                                                          |
| Artifacto |                                                          |
| ry-Abbrev |                                                          |
| iation.2} |                                                          |
+-----------+----------------------------------------------------------+
| #         | ::: content-wrapper                                      |
| #### Comm | ::: {.confluen                                           |
| and optio | ce-information-macro .confluence-information-macro-note} |
| ns {#CLIf | []{.aui-icon .aui-icon-small .aui-iconfont-warning       |
| orJFrogAr | .confluence-information-macro-icon}                      |
| tifactory |                                                          |
| -Commando | ::: confluence-information-macro-body                    |
| ptions.2} | When using the \* or ; characters in the download        |
|           | command options or arguments, make sure to wrap the      |
|           | whole options or arguments string in quotes (\") to make |
|           | sure the \* or ; characters are not interpreted as       |
|           | literals.                                                |
|           | :::                                                      |
|           | :::                                                      |
|           | :::                                                      |
+-----------+----------------------------------------------------------+
| [         | \[Optional\]                                             |
| \--server |                                                          |
| -id]{.s1} | [Server ID configured using the config command. If not   |
|           | specified, the default configured Artifactory server is  |
|           | used.]{.s1}                                              |
+-----------+----------------------------------------------------------+
| \--b      | \[Optional\]                                             |
| uild-name |                                                          |
|           | Build name. For more details, please refer to [Build     |
|           | Integration](                                            |
|           | https://www.jfrog.com/confluence/display/CLI/CLI+for+JFr |
|           | og+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+-----------+----------------------------------------------------------+
| \--bui    | \[Optional\]                                             |
| ld-number |                                                          |
|           | Build number. For more details, please refer to [Build   |
|           | Integration](                                            |
|           | https://www.jfrog.com/confluence/display/CLI/CLI+for+JFr |
|           | og+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+-----------+----------------------------------------------------------+
| \         | \[Optional\]                                             |
| --project |                                                          |
|           | JFrog project key.                                       |
+-----------+----------------------------------------------------------+
| \--module | \[Optional\]                                             |
|           |                                                          |
|           | [Optional module name for the build-info.]{.s1}          |
+-----------+----------------------------------------------------------+
| \--spec   | \[Optional\]                                             |
|           |                                                          |
|           | Path to a file spec. For more details, please refer to   |
|           | [Using File                                              |
|           | Specs](#CLIforJFrogArtifactory-UsingFileSpecs).          |
+-----------+----------------------------------------------------------+
| \--       | [\[Optional\]]{.s1}                                      |
| spec-vars |                                                          |
|           | [List of variables in the form of                        |
|           | \"key1=value1;key2=value2;\...\" to be replaced in the   |
|           | File Spec. In the File Spec, the variables should be     |
|           | used as follows: \${key1}.]{.s1}                         |
+-----------+----------------------------------------------------------+
| \--props  | ::: content-wrapper                                      |
|           | \[Optional\]                                             |
|           |                                                          |
|           | A list of Artifactory                                    |
|           | [properties](https://www.jfrog.com/confluenc             |
|           | e/display/RTF/Properties){style="text-decoration:none;"} |
|           | specified as \"key=value\" pairs separated by a          |
|           | semi-colon (for example,                                 |
|           | \"key1=value1;key2=value2;key3=value3\"). Only artifacts |
|           | with **all** of the specified properties names and       |
|           | values will be downloaded.                               |
|           | :::                                                      |
+-----------+----------------------------------------------------------+
| \--excl   | ::: content-wrapper                                      |
| ude-props | \[Optional\]                                             |
|           |                                                          |
|           | A list of Artifactory                                    |
|           | [properties](https://www.jfrog.com/confluenc             |
|           | e/display/RTF/Properties){style="text-decoration:none;"} |
|           | specified as \"key=value\" pairs separated by a          |
|           | semi-colon (for example,                                 |
|           | \"key1=value1;key2=value2;key3=value3\"). Only artifacts |
|           | **without all** of the specified properties names and    |
|           | values will be downloaded.                               |
|           | :::                                                      |
+-----------+----------------------------------------------------------+
| \--build  | \[Optional\]                                             |
|           |                                                          |
|           | If specified, only artifacts of the specified build are  |
|           | matched. The property format is build-name/build-number. |
|           | If you do not specify the build number, the artifacts    |
|           | are filtered by the latest build number.                 |
+-----------+----------------------------------------------------------+
| \--bundle | \[Optional\]                                             |
|           |                                                          |
|           | If specified, only artifacts of the specified bundle are |
|           | matched. The value format is bundle-name/bundle-version. |
+-----------+----------------------------------------------------------+
| \--flat   | \[Default: false\]                                       |
|           |                                                          |
|           | If true, artifacts are downloaded to the exact target    |
|           | path specified and their hierarchy in the source         |
|           | repository is ignored.                                   |
|           |                                                          |
|           | If false, artifacts are downloaded to the target path in |
|           | the file system while maintaining their hierarchy in the |
|           | source repository.                                       |
|           |                                                          |
|           | If                                                       |
|           | [placeholders](                                          |
|           | https://www.jfrog.com/confluence/display/CLI/CLI+for+JFr |
|           | og+Artifactory#CLIforJFrogArtifactory-UsingPlaceholders) |
|           | are used, and you would like the local file-system       |
|           | (download path) to be determined by placeholders only,   |
|           | or in other words, avoid concatenating the Artifactory   |
|           | folder hierarchy local, set to false.                    |
+-----------+----------------------------------------------------------+
| \--       | \[Default: true\]                                        |
| recursive |                                                          |
|           | If true, artifacts are also downloaded from sub-paths    |
|           | under the specified path in the source repository.       |
|           |                                                          |
|           | If false, only artifacts in the specified source path    |
|           | directory are downloaded.                                |
+-----------+----------------------------------------------------------+
| \         | \[Default: 3\]                                           |
| --threads |                                                          |
|           | The number of parallel threads that should be used to    |
|           | download where each thread downloads a single artifact   |
|           | at a time.                                               |
+-----------+----------------------------------------------------------+
| \--sp     | \[Default: 3\]                                           |
| lit-count |                                                          |
|           | The number of segments into which each file should be    |
|           | split for download (provided the artifact is over        |
|           | `--min-split` in size). To download each file in a       |
|           | single thread, set to 0.                                 |
+-----------+----------------------------------------------------------+
| \         | \[Default: 3\]                                           |
| --retries |                                                          |
|           | [Number of download retries.]{.s1}                       |
+-----------+----------------------------------------------------------+
| \--retry- | \[Default: 0s\]                                          |
| wait-time |                                                          |
|           | Number of seconds or milliseconds to wait between        |
|           | retries. The numeric value should either end with s for  |
|           | seconds or ms for milliseconds.                          |
+-----------+----------------------------------------------------------+
| \--       | \[Default: 5120\]                                        |
| min-split |                                                          |
|           | The minimum size permitted for splitting. Files larger   |
|           | than the specified number will be split into equally     |
|           | sized `--split-count` segments. Any files smaller than   |
|           | the specified number will be downloaded in a single      |
|           | thread. If set to -1, files are not split.               |
+-----------+----------------------------------------------------------+
| \         | \[Default: false\]                                       |
| --dry-run |                                                          |
|           | If true, the command only indicates which artifacts      |
|           | would have been downloaded.                              |
|           |                                                          |
|           | If false, the command is fully executed and downloads    |
|           | artifacts as specified.                                  |
+-----------+----------------------------------------------------------+
| \         | [\[Default: false\] ]{.s1}                               |
| --explode |                                                          |
|           | [Set to true to extract an archive after it is           |
|           | downloaded from Artifactory. ]{.s1}                      |
|           |                                                          |
|           | [Supported compression formats: br, bz2, gz, lz4, sz,    |
|           | xz, zstd.]{.s1}                                          |
|           |                                                          |
|           | [Supported archive formats: zip, tar (including any      |
|           | compressed variants like tar.gz), rar.]{.s1}             |
+-----------+----------------------------------------------------------+
| [\--vali  | [\[Default: false\]]{style="color: rgb(34,34,34);"}      |
| date-syml |                                                          |
| inks]{sty | [If true, the command will validate that                 |
| le="color | **[symlinks]                                             |
| : rgb(34, | (#CLIforJFrogArtifactory-StoringSymlinksinArtifactory)** |
| 34,34);"} | are pointing to existing and unchanged files, by         |
|           | comparing their sha1. Applicable to files and not        |
|           | directories.]{style="color: rgb(34,34,34);"}             |
+-----------+----------------------------------------------------------+
| \--inc    | \[Default: false\]                                       |
| lude-dirs |                                                          |
|           | If true, the source path applies to bottom-chain         |
|           | directories and not only to files. Botton-chain          |
|           | directories are either empty or do not include other     |
|           | directories that match the source path.                  |
+-----------+----------------------------------------------------------+
| \--e      | [A list of Semicolon-separated exclude patterns.         |
| xclusions | A]{.s1}llows using wildcards.                            |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| sync-dele |                                                          |
| tes]{.s1} | [Specific path in the local file system, under which to  |
|           | sync dependencies after the download. After the          |
|           | download, this path will include only the dependencies   |
|           | downloaded during this download operation. The other     |
|           | files under this path will be deleted.]{.s1}             |
+-----------+----------------------------------------------------------+
| \--quiet  | \[Default: false\]                                       |
|           |                                                          |
|           | If true, the delete confirmation message is skipped.     |
+-----------+----------------------------------------------------------+
| \         | \[Optional\]                                             |
| --sort-by |                                                          |
|           | A list of semicolon-separated fields to sort by. The     |
|           | fields must be part of the \'items\' AQL domain. For     |
|           | more information read the [AQL                           |
|           | documentation](https://www.jfrog.c                       |
|           | om/confluence/display/RTF/Artifactory+Query+Language#Art |
|           | ifactoryQueryLanguage-EntitiesandFields){rel="nofollow"} |
+-----------+----------------------------------------------------------+
| \--s      | \[Default: asc\]                                         |
| ort-order |                                                          |
|           | The order by which fields in the \'sort-by\' option      |
|           | should be sorted. Accepts \'asc\' or \'desc\'.           |
+-----------+----------------------------------------------------------+
| \--limit  | \[Optional\]                                             |
|           |                                                          |
|           | The maximum number of items to fetch. Usually used with  |
|           | the \'sort-by\' option.                                  |
+-----------+----------------------------------------------------------+
| \--offset | \[Optional\]                                             |
|           |                                                          |
|           | The offset from which to fetch items (i.e. how many      |
|           | items should be skipped). Usually used with the          |
|           | \'sort-by\' option.                                      |
+-----------+----------------------------------------------------------+
| \--f      | [\[Default: false\] ]{.s1}                               |
| ail-no-op |                                                          |
|           | [Set to true if you\'d like the command to return exit   |
|           | code 2 in case of no files are affected.]{.s1}           |
+-----------+----------------------------------------------------------+
| \--archiv | \[Optional\]                                             |
| e-entries |                                                          |
|           | If specified, only archive artifacts containing entries  |
|           | matching this pattern are matched. You can use wildcards |
|           | to specify multiple artifacts.                           |
+-----------+----------------------------------------------------------+
| \         | [\[Default: false\] ]{.s1}                               |
| --detaile |                                                          |
| d-summary | [Set to true to include a list of the affected files as  |
|           | part of the command output summary.]{.s1}                |
+-----------+----------------------------------------------------------+
| \--ins    | \[Default: false\]                                       |
| ecure-tls |                                                          |
|           | Set to true to skip TLS certificates verification.       |
+-----------+----------------------------------------------------------+
| [\--gpg-  | \[Optional\]                                             |
| key]{.s1} |                                                          |
|           | [Path to the public GPG key file located on the file     |
|           | system, used to validate downloaded release bundle       |
|           | files.]{.s1}                                             |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
|  Command  |                                                          |
| arguments |                                                          |
|  {#CLIfor |                                                          |
| JFrogArti |                                                          |
| factory-C |                                                          |
| ommandarg |                                                          |
| uments.2} |                                                          |
+-----------+----------------------------------------------------------+
| Source    | Specifies the source path in Artifactory, from which the |
| path      | artifacts should be downloaded. You can use wildcards to |
|           | specify multiple artifacts.                              |
+-----------+----------------------------------------------------------+
| Target    | The second argument is optional and specifies the local  |
| path      | file system target path.                                 |
|           |                                                          |
|           | If the target path ends with a slash, the path is        |
|           | assumed to be a directory. For example, if you specify   |
|           | the target as \"repo-name/a/b/\", then \"b\" is assumed  |
|           | to be a directory into which files should be downloaded. |
|           | If there is no terminal slash, the target path is        |
|           | assumed to be a file to which the downloaded file should |
|           | be renamed. For example, if you specify the target as    |
|           | \"a/b\", the downloaded file is renamed to \"b\".        |
|           |                                                          |
|           | For flexibility in specifying the target path, you can   |
|           | include placeholders in the form of {1}, {2} which are   |
|           | replaced by corresponding tokens in the source path that |
|           | are enclosed in parenthesis. For more details, please    |
|           | refer to [Using                                          |
|           | Place                                                    |
|           | holders](#CLIforJFrogArtifactory-UsingPlaceholders)**.** |
+-----------+----------------------------------------------------------+
:::

#### Examples {#CLIforJFrogArtifactory-Examples.3}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.2}

Download an artifact called *`cool-froggy.zip`* located at the root of
the *`my-local-repo`* repository to the current directory.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt dl my-local-repo/cool-froggy.zip
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.2}

Download all artifacts located under the *`all-my-frogs`* directory in
the *`my-local-repo`* repository to the *`all-my-frogs`* folder under
the current directory.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt dl my-local-repo/all-my-frogs/ all-my-frogs/
```
:::
:::

##### **Example 3** {#CLIforJFrogArtifactory-Example3.2}

Download all artifacts located in the *`my-local-repo `*repository with
a *`jar`* extension to the *`all-my-frogs`* folder under the current
directory.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt dl "my-local-repo/*.jar" all-my-frogs/
```
:::
:::

##### **Example 4** {#CLIforJFrogArtifactory-Example4.1}

Download the [latest file uploaded to
the ]{style="color: rgb(36,39,41);"}*all-my-frogs*[ folder in
the ]{style="color: rgb(36,39,41);"}*my-local-repo* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt dl  "my-local-repo/all-my-frogs/" --sort-by=created --sort-order=desc --limit=1
```
:::
:::

### [Copying Files]{style="color: rgb(0,100,0);font-size: 16.0px;font-weight: bold;letter-spacing: -0.006em;"} {#CLIforJFrogArtifactory-CopyingFiles}

This command is used to copy files in Artifactory

::: table-wrap
+---------+------------------------------------------------------------+
| ##      | rt copy                                                    |
| ### Com |                                                            |
| mand na |                                                            |
| me {#CL |                                                            |
| IforJFr |                                                            |
| ogArtif |                                                            |
| actory- |                                                            |
| Command |                                                            |
| name.3} |                                                            |
+---------+------------------------------------------------------------+
| ###     | rt cp                                                      |
| ## Abbr |                                                            |
| eviatio |                                                            |
| n {#CLI |                                                            |
| forJFro |                                                            |
| gArtifa |                                                            |
| ctory-A |                                                            |
| bbrevia |                                                            |
| tion.3} |                                                            |
+---------+------------------------------------------------------------+
| #       | ::: content-wrapper                                        |
| #### Co | ::: {.conflu                                               |
| mmand o | ence-information-macro .confluence-information-macro-note} |
| ptions  | []{.aui-icon .aui-icon-small .aui-iconfont-warning         |
| {#CLIfo | .confluence-information-macro-icon}                        |
| rJFrogA |                                                            |
| rtifact | ::: confluence-information-macro-body                      |
| ory-Com | When using the \* or ; characters in the copy command      |
| mandopt | options or arguments, make sure to wrap the whole options  |
| ions.3} | or arguments string in quotes (\") to make sure the \* or  |
|         | ; characters are not interpreted as literals.              |
|         | :::                                                        |
|         | :::                                                        |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \--se   | \[Optional\]                                               |
| rver-id |                                                            |
|         | [Server ID configured using the config command. If not     |
|         | specified, the default configured Artifactory server is    |
|         | used.]{.s1}                                                |
+---------+------------------------------------------------------------+
| \--spec | \[Optional\]                                               |
|         |                                                            |
|         | Path to a file spec. For more details, please refer to     |
|         | [Using File                                                |
|         | Specs](#CLIforJFrogArtifactory-UsingFileSpecs).            |
+---------+------------------------------------------------------------+
| \       | ::: content-wrapper                                        |
| --props | \[Optional\]                                               |
|         |                                                            |
|         | [A list of Artifactory                                     |
|         | [properties](https://www.jfrog.com/conflue                 |
|         | nce/display/RTF/Properties){style="text-decoration:none;"} |
|         | specified as \"key=value\" pairs separated by a            |
|         | semi-colon. (For example,                                  |
|         | \"key1=value1;key2=value2;key3=value3\"). Only artifacts   |
|         | with these properties names and values will be             |
|         | copied.]{style="color: rgb(34,34,34);"}                    |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \-      | ::: content-wrapper                                        |
| -exclud | \[Optional\]                                               |
| e-props |                                                            |
|         | A list of Artifactory                                      |
|         | [properties](https://www.jfrog.com/conflue                 |
|         | nce/display/RTF/Properties){style="text-decoration:none;"} |
|         | specified as \"key=value\" pairs separated by a semi-colon |
|         | (for example, \"key1=value1;key2=value2;key3=value3\").    |
|         | Only artifacts **without all** of the specified properties |
|         | names and values will be copied.                           |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \       | \[Optional\]                                               |
| --build |                                                            |
|         | If specified, only artifacts of the specified build are    |
|         | matched. The property format is build-name/build-number.   |
|         | If you do not specify the build number, the artifacts are  |
|         | filtered by the latest build number.                       |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -bundle |                                                            |
|         | If specified, only artifacts of the specified bundle are   |
|         | matched. The value format is bundle-name/bundle-version.   |
+---------+------------------------------------------------------------+
| \--flat | \[Default: false\]                                         |
|         |                                                            |
|         | If true, artifacts are copied to the exact target path     |
|         | specified and their hierarchy in the source path is        |
|         | ignored.                                                   |
|         |                                                            |
|         | If false, artifacts are copied to the target path while    |
|         | maintaining their source path hierarchy.                   |
+---------+------------------------------------------------------------+
| \--re   | \[Default: true\]                                          |
| cursive |                                                            |
|         | If true, artifacts are also copied from sub-paths under    |
|         | the specified source path.                                 |
|         |                                                            |
|         | If false, only artifacts in the specified source path      |
|         | directory are copied.                                      |
+---------+------------------------------------------------------------+
| \--     | \[Default: false\]                                         |
| dry-run |                                                            |
|         |  If true, the command only indicates which artifacts would |
|         | have been copied.                                          |
|         |                                                            |
|         | If false, the command is fully executed and copies         |
|         | artifacts as specified.                                    |
+---------+------------------------------------------------------------+
| \--exc  | [A list of Semicolon-separated exclude patterns.           |
| lusions | A]{.s1}llows using wildcards.                              |
+---------+------------------------------------------------------------+
| \--     | [\[Default: 3\]]{.s1}                                      |
| threads |                                                            |
|         | [Number of threads used for copying the items.]{.s1}       |
+---------+------------------------------------------------------------+
| \--     | \[Optional\]                                               |
| sort-by |                                                            |
|         | A list of semicolon-separated fields to sort by. The       |
|         | fields must be part of the \'items\' AQL domain. For more  |
|         | information read the [AQL                                  |
|         | documentation](https://www.jfr                             |
|         | og.com/confluence/display/RTF/Artifactory+Query+Language#A |
|         | rtifactoryQueryLanguage-EntitiesandFields){rel="nofollow"} |
+---------+------------------------------------------------------------+
| \--sor  | \[Default: asc\]                                           |
| t-order |                                                            |
|         | The order by which fields in the \'sort-by\' option should |
|         | be sorted. Accepts \'asc\' or \'desc\'.                    |
+---------+------------------------------------------------------------+
| \       | \[Optional\]                                               |
| --limit |                                                            |
|         | The maximum number of items to fetch. Usually used with    |
|         | the \'sort-by\' option.                                    |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -offset |                                                            |
|         | The offset from which to fetch items (i.e. how many items  |
|         | should be skipped). Usually used with the \'sort-by\'      |
|         | option.                                                    |
+---------+------------------------------------------------------------+
| \--fai  | [\[Default: false\] ]{.s1}                                 |
| l-no-op |                                                            |
|         | [Set to true if you\'d like the command to return exit     |
|         | code 2 in case of no files are affected.]{.s1}             |
+---------+------------------------------------------------------------+
| \--a    | \[Optional\]                                               |
| rchive- |                                                            |
| entries | If specified, only archive artifacts containing entries    |
|         | matching this pattern are matched. You can use wildcards   |
|         | to specify multiple artifacts.                             |
+---------+------------------------------------------------------------+
| \       | \[Default: false\]                                         |
| --insec |                                                            |
| ure-tls | Set to true to skip TLS certificates verification.         |
+---------+------------------------------------------------------------+
| \--     | \[Default: 3\]                                             |
| retries |                                                            |
|         | Number for HTTP retry attempts.                            |
+---------+------------------------------------------------------------+
| \--r    | \[Default: 0s\]                                            |
| etry-wa |                                                            |
| it-time | Number of seconds or milliseconds to wait between retries. |
|         | The numeric value should either end with s for seconds or  |
|         | ms for milliseconds.                                       |
+---------+------------------------------------------------------------+
| #####   | The command takes two arguments                            |
|  Comman |                                                            |
| d argum |                                                            |
| ents {# |                                                            |
| CLIforJ |                                                            |
| FrogArt |                                                            |
| ifactor |                                                            |
| y-Comma |                                                            |
| ndargum |                                                            |
| ents.3} |                                                            |
+---------+------------------------------------------------------------+
| Source  | Specifies the source path in Artifactory, from which the   |
| path    | artifacts should be copied, in the following format:       |
|         | ` [repository name]/[repository path]. `You can use        |
|         | wildcards to specify multiple artifacts.                   |
+---------+------------------------------------------------------------+
| Target  | Specifies the target path in Artifactory, to which the     |
| path    | artifacts should be copied, in the following format:       |
|         | ` [repository name]/[repository path]`                     |
|         |                                                            |
|         | If the pattern ends with a slash, the target path is       |
|         | assumed to be a folder. For example, if you specify the    |
|         | target as \"repo-name/a/b/\", then \"b\" is assumed to be  |
|         | a folder in Artifactory into which files should be copied. |
|         | If there is no terminal slash, the target path is assumed  |
|         | to be a file to which the copied file should be renamed.   |
|         | For example, if you specify the target as                  |
|         | \"repo-name/a/b\", the copied file is renamed to \"b\" in  |
|         | Artifactory.                                               |
|         |                                                            |
|         | For flexibility in specifying the target path, you can     |
|         | include placeholders in the form of {1}, {2} which are     |
|         | replaced by corresponding tokens in the source path that   |
|         | are enclosed in parenthesis. For more details, please      |
|         | refer to [Using                                            |
|         | Placeholders](h                                            |
|         | ttps://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+ |
|         | Artifactory#CLIforJFrogArtifactory-UsingPlaceholders)**.** |
+---------+------------------------------------------------------------+
:::

#### Examples {#CLIforJFrogArtifactory-Examples.4}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.3}

Copy all artifacts located under *`/rabbit`* in
the *`source-frog-repo`* repository into the same path in
the *`target-frog-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt cp source-frog-repo/rabbit/ target-frog-repo/rabbit/
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.3}

Copy all zip files located under *`/rabbit`* in
the *`source-frog-repo`* repository into the same path in
the *`target-frog-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
 jf rt cp "source-frog-repo/rabbit/*.zip" target-frog-repo/rabbit/
```
:::
:::

##### **Example 3** {#CLIforJFrogArtifactory-Example3.3}

Copy all artifacts located under *`/rabbit`* in
the *`source-frog-repo`* repository and with property
\"Version=1.0\" into the same path in
the *`target-frog-repo`* repository  .

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
 jf rt cp "source-frog-repo/rabbit/*" target-frog-repo/rabbit/ --props=Version=1.0
```
:::
:::

### Moving Files {#CLIforJFrogArtifactory-MovingFiles}

This command is used to move files in Artifactory

::: table-wrap
+---------+------------------------------------------------------------+
| ##      | rt move                                                    |
| ### Com |                                                            |
| mand na |                                                            |
| me {#CL |                                                            |
| IforJFr |                                                            |
| ogArtif |                                                            |
| actory- |                                                            |
| Command |                                                            |
| name.4} |                                                            |
+---------+------------------------------------------------------------+
| ###     | rt mv                                                      |
| ## Abbr |                                                            |
| eviatio |                                                            |
| n {#CLI |                                                            |
| forJFro |                                                            |
| gArtifa |                                                            |
| ctory-A |                                                            |
| bbrevia |                                                            |
| tion.4} |                                                            |
+---------+------------------------------------------------------------+
| #       | ::: content-wrapper                                        |
| #### Co | ::: {.conflu                                               |
| mmand o | ence-information-macro .confluence-information-macro-note} |
| ptions  | []{.aui-icon .aui-icon-small .aui-iconfont-warning         |
| {#CLIfo | .confluence-information-macro-icon}                        |
| rJFrogA |                                                            |
| rtifact | ::: confluence-information-macro-body                      |
| ory-Com | When using the \* or ; characters in the copy command      |
| mandopt | options or arguments, make sure to wrap the whole options  |
| ions.4} | or arguments string in quotes (\") to make sure the \* or  |
|         | ; characters are not interpreted as literals.              |
|         | :::                                                        |
|         | :::                                                        |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \--se   | \[Optional\]                                               |
| rver-id |                                                            |
|         | [Server ID configured using the config command. If not     |
|         | specified, the default configured Artifactory server is    |
|         | used.]{.s1}                                                |
+---------+------------------------------------------------------------+
| \--spec | \[Optional\]                                               |
|         |                                                            |
|         | Path to a file spec. For more details, please refer to     |
|         | [Using File                                                |
|         | Specs](#CLIforJFrogArtifactory-UsingFileSpecs).            |
+---------+------------------------------------------------------------+
| \       | ::: content-wrapper                                        |
| --props | \[Optional\]                                               |
|         |                                                            |
|         | [A list of Artifactory                                     |
|         | [properties](https://www.jfrog.com/conflue                 |
|         | nce/display/RTF/Properties){style="text-decoration:none;"} |
|         | specified as \"key=value\" pairs separated by a semi-colon |
|         | (for example, \"key1=value1;key2=value2;key3=value3\").    |
|         | Only artifacts with these properties names and values will |
|         | be moved.]{style="color: rgb(34,34,34);"}                  |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \-      | ::: content-wrapper                                        |
| -exclud | \[Optional\]                                               |
| e-props |                                                            |
|         | A list of Artifactory                                      |
|         | [properties](https://www.jfrog.com/conflue                 |
|         | nce/display/RTF/Properties){style="text-decoration:none;"} |
|         | specified as \"key=value\" pairs separated by a semi-colon |
|         | (for example, \"key1=value1;key2=value2;key3=value3\").    |
|         | Only artifacts **without all** of the specified properties |
|         | names and values will be moved.                            |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \       | \[Optional\]                                               |
| --build |                                                            |
|         | If specified, only artifacts of the specified build are    |
|         | matched. The property format is build-name/build-number.   |
|         | If you do not specify the build number, the artifacts are  |
|         | filtered by the latest build number.                       |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -bundle |                                                            |
|         | If specified, only artifacts of the specified bundle are   |
|         | matched. The value format is bundle-name/bundle-version.   |
+---------+------------------------------------------------------------+
| \--flat | \[Default: false\]                                         |
|         |                                                            |
|         | If true, artifacts are moved to the exact target path      |
|         | specified and their hierarchy in the source path is        |
|         | ignored.                                                   |
|         |                                                            |
|         | If false, artifacts are moved to the target path while     |
|         | maintaining their source path hierarchy.                   |
+---------+------------------------------------------------------------+
| \--re   | \[Default: true\]                                          |
| cursive |                                                            |
|         | If true, artifacts are also moved from sub-paths under the |
|         | specified source path.                                     |
|         |                                                            |
|         | If false, only artifacts in the specified source path      |
|         | directory are moved.                                       |
+---------+------------------------------------------------------------+
| \--     | \[Default: false\]                                         |
| dry-run |                                                            |
|         |  If true, the command only indicates which artifacts would |
|         | have been moved.                                           |
|         |                                                            |
|         | If false, the command is fully executed and downloads      |
|         | artifacts as specified.                                    |
+---------+------------------------------------------------------------+
| \--exc  | [A list of Semicolon-separated exclude patterns.           |
| lusions | A]{.s1}llows using wildcards.                              |
+---------+------------------------------------------------------------+
| \--     | [\[Default: 3\]]{.s1}                                      |
| threads |                                                            |
|         | [Number of threads used for moving the items.]{.s1}        |
+---------+------------------------------------------------------------+
| \--     | \[Optional\]                                               |
| sort-by |                                                            |
|         | A list of semicolon-separated fields to sort by. The       |
|         | fields must be part of the \'items\' AQL domain. For more  |
|         | information read the [AQL                                  |
|         | documentation](https://www.jfr                             |
|         | og.com/confluence/display/RTF/Artifactory+Query+Language#A |
|         | rtifactoryQueryLanguage-EntitiesandFields){rel="nofollow"} |
+---------+------------------------------------------------------------+
| \--sor  | \[Default: asc\]                                           |
| t-order |                                                            |
|         | The order by which fields in the \'sort-by\' option should |
|         | be sorted. Accepts \'asc\' or \'desc\'.                    |
+---------+------------------------------------------------------------+
| \       | \[Optional\]                                               |
| --limit |                                                            |
|         | The maximum number of items to fetch. Usually used with    |
|         | the \'sort-by\' option.                                    |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -offset |                                                            |
|         | The offset from which to fetch items (i.e. how many items  |
|         | should be skipped). Usually used with the \'sort-by\'      |
|         | option.                                                    |
+---------+------------------------------------------------------------+
| \--fai  | [\[Default: false\] ]{.s1}                                 |
| l-no-op |                                                            |
|         | [Set to true if you\'d like the command to return exit     |
|         | code 2 in case of no files are affected.]{.s1}             |
+---------+------------------------------------------------------------+
| \--a    | \[Optional\]                                               |
| rchive- |                                                            |
| entries | If specified, only archive artifacts containing entries    |
|         | matching this pattern are matched. You can use wildcards   |
|         | to specify multiple artifacts.                             |
+---------+------------------------------------------------------------+
| \       | \[Default: false\]                                         |
| --insec |                                                            |
| ure-tls | Set to true to skip TLS certificates verification.         |
+---------+------------------------------------------------------------+
| \--     | \[Default: 3\]                                             |
| retries |                                                            |
|         | Number of HTTP retry attempts.                             |
+---------+------------------------------------------------------------+
| \--r    | \[Default: 0s\]                                            |
| etry-wa |                                                            |
| it-time | Number of seconds or milliseconds to wait between retries. |
|         | The numeric value should either end with s for seconds or  |
|         | ms for milliseconds.                                       |
+---------+------------------------------------------------------------+
| #####   | The command takes two arguments                            |
|  Comman |                                                            |
| d argum |                                                            |
| ents {# |                                                            |
| CLIforJ |                                                            |
| FrogArt |                                                            |
| ifactor |                                                            |
| y-Comma |                                                            |
| ndargum |                                                            |
| ents.4} |                                                            |
+---------+------------------------------------------------------------+
| Source  | Specifies the source path in Artifactory, from which the   |
| path    | artifacts should be moved, in the following format:        |
|         | ` [repository name]/[repository path]. `You can use        |
|         | wildcards to specify multiple artifacts.                   |
+---------+------------------------------------------------------------+
| Target  | Specifies the target path in Artifactory, to which the     |
| path    | artifacts should be moved, in the following format:        |
|         | ` [repository name]/[repository path]`                     |
|         |                                                            |
|         | If the pattern ends with a slash, the target path is       |
|         | assumed to be a folder. For example, if you specify the    |
|         | target as \"repo-name/a/b/\", then \"b\" is assumed to be  |
|         | a folder in Artifactory into which files should be moved.  |
|         | If there is no terminal slash, the target path is assumed  |
|         | to be a file to which the moved file should be renamed.    |
|         | For example, if you specify the target as                  |
|         | \"repo-name/a/b\", the moved file is renamed to \"b\" in   |
|         | Artifactory.                                               |
|         |                                                            |
|         | For flexibility in specifying the upload path, you can     |
|         | include placeholders in the form of {1}, {2} which are     |
|         | replaced by corresponding tokens in the source path that   |
|         | are enclosed in parenthesis. For more details, please      |
|         | refer to [Using                                            |
|         | Placeholders](h                                            |
|         | ttps://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+ |
|         | Artifactory#CLIforJFrogArtifactory-UsingPlaceholders)**.** |
+---------+------------------------------------------------------------+
:::

#### Examples {#CLIforJFrogArtifactory-Examples.5}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.4}

Move all artifacts located under *`/rabbit`* in
the *`source-frog-repo`* repository into the same path in
the *`target-frog-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt mv source-frog-repo/rabbit/ target-frog-repo/rabbit/
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.4}

Move all zip files located under *`/rabbit`* in
the *`source-frog-repo`* repository into the same path in
the *`target-frog-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
 jf rt mv "source-frog-repo/rabbit/*.zip" target-frog-repo/rabbit/
```
:::
:::

##### **Example 3** {#CLIforJFrogArtifactory-Example3.4}

Move all artifacts located under *`/rabbit`* in
the *`source-frog-repo`* repository and with property
\"Version=1.0\" into the same path in
the *`target-frog-repo`* repository  .

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
 jf rt mv "source-frog-repo/rabbit/*" target-frog-repo/rabbit/ --props=Version=1.0
```
:::
:::

### Deleting Files {#CLIforJFrogArtifactory-DeletingFiles}

This command is used to delete files in Artifactory

::: table-wrap
+---------+------------------------------------------------------------+
| ##      | rt delete                                                  |
| ### Com |                                                            |
| mand na |                                                            |
| me {#CL |                                                            |
| IforJFr |                                                            |
| ogArtif |                                                            |
| actory- |                                                            |
| Command |                                                            |
| name.5} |                                                            |
+---------+------------------------------------------------------------+
| ###     | rt del                                                     |
| ## Abbr |                                                            |
| eviatio |                                                            |
| n {#CLI |                                                            |
| forJFro |                                                            |
| gArtifa |                                                            |
| ctory-A |                                                            |
| bbrevia |                                                            |
| tion.5} |                                                            |
+---------+------------------------------------------------------------+
| #       | ::: content-wrapper                                        |
| #### Co | ::: {.conflu                                               |
| mmand o | ence-information-macro .confluence-information-macro-note} |
| ptions  | []{.aui-icon .aui-icon-small .aui-iconfont-warning         |
| {#CLIfo | .confluence-information-macro-icon}                        |
| rJFrogA |                                                            |
| rtifact | ::: confluence-information-macro-body                      |
| ory-Com | When using the \* or ; characters in the delete command    |
| mandopt | options or arguments, make sure to wrap the whole options  |
| ions.5} | or arguments string in quotes (\") to make sure the \* or  |
|         | ; characters are not interpreted as literals.              |
|         | :::                                                        |
|         | :::                                                        |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \--se   | \[Optional\]                                               |
| rver-id |                                                            |
|         | [Server ID configured using the config command. If not     |
|         | specified, the default configured Artifactory server is    |
|         | used.]{.s1}                                                |
+---------+------------------------------------------------------------+
| \--spec | \[Optional\]                                               |
|         |                                                            |
|         | Path to a file spec. For more details, please refer to     |
|         | [Using File                                                |
|         | Specs](#CLIforJFrogArtifactory-UsingFileSpecs).            |
+---------+------------------------------------------------------------+
| \       | ::: content-wrapper                                        |
| --props | \[Optional\]                                               |
|         |                                                            |
|         | [A list of Artifactory                                     |
|         | [properties](https://www.jfrog.com/conflue                 |
|         | nce/display/RTF/Properties){style="text-decoration:none;"} |
|         | specified as \"key=value\" pairs separated by a semi-colon |
|         | (for example, \"key1=value1;key2=value2;key3=value3\").    |
|         | Only artifacts with these properties names and values will |
|         | be deleted.]{style="color: rgb(34,34,34);"}                |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \-      | ::: content-wrapper                                        |
| -exclud | \[Optional\]                                               |
| e-props |                                                            |
|         | A list of Artifactory                                      |
|         | [properties](https://www.jfrog.com/conflue                 |
|         | nce/display/RTF/Properties){style="text-decoration:none;"} |
|         | specified as \"key=value\" pairs separated by a semi-colon |
|         | (for example, \"key1=value1;key2=value2;key3=value3\").    |
|         | Only artifacts **without all** of the specified properties |
|         | names and values will be deleted.                          |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \       | \[Optional\]                                               |
| --build |                                                            |
|         | If specified, only artifacts of the specified build are    |
|         | matched. The property format is build-name/build-number.   |
|         | If you do not specify the build number, the artifacts are  |
|         | filtered by the latest build number.                       |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -bundle |                                                            |
|         | If specified, only artifacts of the specified bundle are   |
|         | matched. The value format is bundle-name/bundle-version.   |
+---------+------------------------------------------------------------+
| \--re   | \[Default: true\]                                          |
| cursive |                                                            |
|         | If true, artifacts are also deleted from sub-paths under   |
|         | the specified path.                                        |
+---------+------------------------------------------------------------+
| \       | \[Default: false\]                                         |
| --quiet |                                                            |
|         | If true, the delete confirmation message is skipped.       |
+---------+------------------------------------------------------------+
| \--     | \[Default: false\]                                         |
| dry-run |                                                            |
|         | If true, the command only indicates which artifacts would  |
|         | have been deleted.                                         |
|         |                                                            |
|         | If false, the command is fully executed and deletes        |
|         | artifacts as specified.                                    |
+---------+------------------------------------------------------------+
| \--exc  | [A list of Semicolon-separated exclude patterns.           |
| lusions | A]{.s1}llows using wildcards.                              |
+---------+------------------------------------------------------------+
| \--     | \[Optional\]                                               |
| sort-by |                                                            |
|         | A list of semicolon-separated fields to sort by. The       |
|         | fields must be part of the \'items\' AQL domain. For more  |
|         | information read the [AQL                                  |
|         | documentation](https://www.jfr                             |
|         | og.com/confluence/display/RTF/Artifactory+Query+Language#A |
|         | rtifactoryQueryLanguage-EntitiesandFields){rel="nofollow"} |
+---------+------------------------------------------------------------+
| \--sor  | \[Default: asc\]                                           |
| t-order |                                                            |
|         | The order by which fields in the \'sort-by\' option should |
|         | be sorted. Accepts \'asc\' or \'desc\'.                    |
+---------+------------------------------------------------------------+
| \       |  \[Optional\]                                              |
| --limit |                                                            |
|         | The maximum number of items to fetch. Usually used with    |
|         | the \'sort-by\' option.                                    |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -offset |                                                            |
|         | The offset from which to fetch items (i.e. how many items  |
|         | should be skipped). Usually used with the \'sort-by\'      |
|         | option.                                                    |
+---------+------------------------------------------------------------+
| \--fai  | [\[Default: false\] ]{.s1}                                 |
| l-no-op |                                                            |
|         | [Set to true if you\'d like the command to return exit     |
|         | code 2 in case of no files are affected.]{.s1}             |
+---------+------------------------------------------------------------+
| \--a    | \[Optional\]                                               |
| rchive- |                                                            |
| entries | If specified, only archive artifacts containing entries    |
|         | matching this pattern are matched. You can use wildcards   |
|         | to specify multiple artifacts.                             |
+---------+------------------------------------------------------------+
| \--     | [\[Default: 3\] ]{.s1}                                     |
| threads |                                                            |
|         | [Number of threads used for deleting the items.]{.s1}      |
+---------+------------------------------------------------------------+
| \       | \[Default: false\]                                         |
| --insec |                                                            |
| ure-tls | Set to true to skip TLS certificates verification.         |
+---------+------------------------------------------------------------+
| \--     | \[Default: 3\]                                             |
| retries |                                                            |
|         | Number of HTTP retry attempts.                             |
+---------+------------------------------------------------------------+
| \--r    | \[Default: 0s\]                                            |
| etry-wa |                                                            |
| it-time | Number of seconds or milliseconds to wait between retries. |
|         | The numeric value should either end with s for seconds or  |
|         | ms for milliseconds.\--retruy-wait-time                    |
+---------+------------------------------------------------------------+
| #####   | The command takes one argument                             |
|  Comman |                                                            |
| d argum |                                                            |
| ents {# |                                                            |
| CLIforJ |                                                            |
| FrogArt |                                                            |
| ifactor |                                                            |
| y-Comma |                                                            |
| ndargum |                                                            |
| ents.5} |                                                            |
+---------+------------------------------------------------------------+
| Delete  | Specifies the path in Artifactory of the files that should |
| path    | be deleted in the following format:                        |
|         | ` [repository name]/[repository path]. `You can use        |
|         | wildcards to specify multiple artifacts.                   |
+---------+------------------------------------------------------------+
:::

#### Examples {#CLIforJFrogArtifactory-Examples.6}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.5}

Delete all artifacts located under *`/rabbit`* in
the *`frog-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
 jf rt del frog-repo/rabbit/
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.5}

Delete all zip files located under *`/rabbit`* in
the *`frog-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
  jf rt del "frog-repo/rabbit/*.zip"
```
:::
:::

### Searching Files {#CLIforJFrogArtifactory-SearchingFiles}

This command is used to search and display files in Artifactory.

::: table-wrap
+---------+------------------------------------------------------------+
| ##      | rt search                                                  |
| ### Com |                                                            |
| mand na |                                                            |
| me {#CL |                                                            |
| IforJFr |                                                            |
| ogArtif |                                                            |
| actory- |                                                            |
| Command |                                                            |
| name.6} |                                                            |
+---------+------------------------------------------------------------+
| ###     | rt s                                                       |
| ## Abbr |                                                            |
| eviatio |                                                            |
| n {#CLI |                                                            |
| forJFro |                                                            |
| gArtifa |                                                            |
| ctory-A |                                                            |
| bbrevia |                                                            |
| tion.6} |                                                            |
+---------+------------------------------------------------------------+
| #       | ::: content-wrapper                                        |
| #### Co | ::: {.conflu                                               |
| mmand o | ence-information-macro .confluence-information-macro-note} |
| ptions  | []{.aui-icon .aui-icon-small .aui-iconfont-warning         |
| {#CLIfo | .confluence-information-macro-icon}                        |
| rJFrogA |                                                            |
| rtifact | ::: confluence-information-macro-body                      |
| ory-Com | When using the \* or ; characters in the command options   |
| mandopt | or arguments, make sure to wrap the whole options or       |
| ions.6} | arguments string in quotes (\") to make sure the \* or ;   |
|         | characters are not interpreted as literals.                |
|         | :::                                                        |
|         | :::                                                        |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \--se   | \[Optional\]                                               |
| rver-id |                                                            |
|         | [Server ID configured using the config command. If not     |
|         | specified, the default configured Artifactory server is    |
|         | used.]{.s1}                                                |
+---------+------------------------------------------------------------+
| \--spec | \[Optional\]                                               |
|         |                                                            |
|         | Path to a file spec. For more details, please refer to     |
|         | [Using File                                                |
|         | Specs](#CLIforJFrogArtifactory-UsingFileSpecs).            |
+---------+------------------------------------------------------------+
| \       | \[Optional\]                                               |
| --count |                                                            |
|         | [Set to true to display only the total of files or folders |
|         | found.]{.s1}                                               |
+---------+------------------------------------------------------------+
| [\      | \[Optional\]                                               |
| --inclu |                                                            |
| de-dirs | [Set to true if you\'d like to also apply the source path  |
| ]{.s1}  | pattern for directories and not only for files]{.s1}       |
+---------+------------------------------------------------------------+
| \--sp   | [\[Optional\]]{.s1}                                        |
| ec-vars |                                                            |
|         | [List of variables in the form of                          |
|         | \"key1=value1;key2=value2;\...\" to be replaced in the     |
|         | File Spec. In the File Spec, the variables should be used  |
|         | as follows: \${key1}.]{.s1}                                |
+---------+------------------------------------------------------------+
| \       | ::: content-wrapper                                        |
| --props | \[Optional\]                                               |
|         |                                                            |
|         | [A list of Artifactory                                     |
|         | [properties](https://www.jfrog.com/conflue                 |
|         | nce/display/RTF/Properties){style="text-decoration:none;"} |
|         | specified as \"key=value\" pairs separated by a semi-colon |
|         | (for example, \"key1=value1;key2=value2;key3=value3\").    |
|         | Only artifacts with these properties names and values will |
|         | be returned.]{style="color: rgb(34,34,34);"}               |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \-      | ::: content-wrapper                                        |
| -exclud | \[Optional\]                                               |
| e-props |                                                            |
|         | A list of Artifactory                                      |
|         | [properties](https://www.jfrog.com/conflue                 |
|         | nce/display/RTF/Properties){style="text-decoration:none;"} |
|         | specified as \"key=value\" pairs separated by a semi-colon |
|         | (for example, \"key1=value1;key2=value2;key3=value3\").    |
|         | Only artifacts **without all** of the specified properties |
|         | names and values will be returned.                         |
|         | :::                                                        |
+---------+------------------------------------------------------------+
| \       | \[Optional\]                                               |
| --build |                                                            |
|         | [If specified, only artifacts of the specified build are   |
|         | matched. The property format is build-name/build-number.   |
|         | If you do not specify the build number, the artifacts are  |
|         | filtered by the latest build number.]{.s1}                 |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -bundle |                                                            |
|         | If specified, only artifacts of the specified bundle are   |
|         | matched. The value format is bundle-name/bundle-version.   |
+---------+------------------------------------------------------------+
| \--re   | \[Default: true\]                                          |
| cursive |                                                            |
|         | [Set to false if you do not wish to search artifacts       |
|         | inside sub-folders in Artifactory.]{.s1}                   |
+---------+------------------------------------------------------------+
| \--exc  | [A list of Semicolon-separated exclude patterns.           |
| lusions | A]{.s1}llows using wildcards.                              |
+---------+------------------------------------------------------------+
| \--     | \[Optional\]                                               |
| sort-by |                                                            |
|         | A list of semicolon-separated fields to sort by. The       |
|         | fields must be part of the \'items\' AQL domain. For more  |
|         | information read the [AQL                                  |
|         | documentation](https://www.jfr                             |
|         | og.com/confluence/display/RTF/Artifactory+Query+Language#A |
|         | rtifactoryQueryLanguage-EntitiesandFields){rel="nofollow"} |
+---------+------------------------------------------------------------+
| \--sor  | \[Default: asc\]                                           |
| t-order |                                                            |
|         | The order by which fields in the \'sort-by\' option should |
|         | be sorted. Accepts \'asc\' or \'desc\'.                    |
+---------+------------------------------------------------------------+
| \--tra  | [\[Default: false\] ]{.s1}                                 |
| nsitive |                                                            |
|         | [Set to true to look for artifacts also in remote          |
|         | repositories. Available on Artifactory version 7.17.0 or   |
|         | higher.]{.s1}                                              |
+---------+------------------------------------------------------------+
| \       |  \[Optional\]                                              |
| --limit |                                                            |
|         | The maximum number of items to fetch. Usually used with    |
|         | the \'sort-by\' option.                                    |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -offset |                                                            |
|         | The offset from which to fetch items (i.e. how many items  |
|         | should be skipped). Usually used with the \'sort-by\'      |
|         | option.                                                    |
+---------+------------------------------------------------------------+
| \--fai  | [\[Default: false\] ]{.s1}                                 |
| l-no-op |                                                            |
|         | [Set to true if you\'d like the command to return exit     |
|         | code 2 in case of no files are affected.]{.s1}             |
+---------+------------------------------------------------------------+
| \--a    | \[Optional\]                                               |
| rchive- |                                                            |
| entries | If specified, only archive artifacts containing entries    |
|         | matching this pattern are matched. You can use wildcards   |
|         | to specify multiple artifacts.                             |
+---------+------------------------------------------------------------+
| \       | \[Default: false\]                                         |
| --insec |                                                            |
| ure-tls | Set to true to skip TLS certificates verification.         |
+---------+------------------------------------------------------------+
| \--     | \[Default: 3\]                                             |
| retries |                                                            |
|         | Number of HTTP retry attempts.                             |
+---------+------------------------------------------------------------+
| \--r    | \[Default: 0s\]                                            |
| etry-wa |                                                            |
| it-time | Number of seconds or milliseconds to wait between retries. |
|         | The numeric value should either end with s for seconds or  |
|         | ms for milliseconds.retry-wait-time                        |
+---------+------------------------------------------------------------+
| #####   | \                                                          |
|  Comman |                                                            |
| d argum |                                                            |
| ents {# |                                                            |
| CLIforJ |                                                            |
| FrogArt |                                                            |
| ifactor |                                                            |
| y-Comma |                                                            |
| ndargum |                                                            |
| ents.6} |                                                            |
+---------+------------------------------------------------------------+
| Search  | Specifies the search path in Artifactory, in the following |
| path    | format: ` [repository name]/[repository path]. `You can    |
|         | use wildcards to specify multiple artifacts.               |
+---------+------------------------------------------------------------+
:::

#### Examples {#CLIforJFrogArtifactory-Examples.7}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.6}

Display a list of all artifacts located under *`/rabbit`* in
the *`frog-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
 jf rt s frog-repo/rabbit/
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.6}

Display a list of all zip files located under *`/rabbit`* in
the *`frog-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
  jf rt s "frog-repo/rabbit/*.zip"
```
:::
:::

### Setting Properties on Files {#CLIforJFrogArtifactory-SettingPropertiesonFiles}

This command is used for setting properties on existing files in
Artifactory.

::: table-wrap
+--------+-------------------------------------------------------------+
| ####   | rt set-props                                                |
| # Comm |                                                             |
| and na |                                                             |
| me {#C |                                                             |
| LIforJ |                                                             |
| FrogAr |                                                             |
| tifact |                                                             |
| ory-Co |                                                             |
| mmandn |                                                             |
| ame.7} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | rt sp                                                       |
|  Abbre |                                                             |
| viatio |                                                             |
| n {#CL |                                                             |
| IforJF |                                                             |
| rogArt |                                                             |
| ifacto |                                                             |
| ry-Abb |                                                             |
| reviat |                                                             |
| ion.7} |                                                             |
+--------+-------------------------------------------------------------+
| ####   | ::: content-wrapper                                         |
| # Comm | ::: {.confl                                                 |
| and op | uence-information-macro .confluence-information-macro-note} |
| tions  | []{.aui-icon .aui-icon-small .aui-iconfont-warning          |
| {#CLIf | .confluence-information-macro-icon}                         |
| orJFro |                                                             |
| gArtif | ::: confluence-information-macro-body                       |
| actory | When using the \* or ; characters in the command options or |
| -Comma | arguments, make sure to wrap the whole options or arguments |
| ndopti | string in quotes (\") to make sure the \* or ; characters   |
| ons.7} | are not interpreted as literals.                            |
|        | :::                                                         |
|        | :::                                                         |
|        | :::                                                         |
+--------+-------------------------------------------------------------+
| \--ser | \[Optional\]                                                |
| ver-id |                                                             |
|        | [Server ID configured using the config command. If not      |
|        | specified, the default configured Artifactory server is     |
|        | used.]{.s1}                                                 |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --spec |                                                             |
|        | Path to a file spec. For more details, please refer to      |
|        | [Using File Specs](#CLIforJFrogArtifactory-UsingFileSpecs). |
+--------+-------------------------------------------------------------+
| \--spe | \[Optional\]                                                |
| c-vars |                                                             |
|        | List of variables in the form of                            |
|        | \"key1=value1;key2=value2;\...\" to be replaced in the File |
|        | Spec. In the File Spec, the variables should be used as     |
|        | follows: \${key1}.                                          |
+--------+-------------------------------------------------------------+
| \-     | \[Optional\]                                                |
| -props |                                                             |
|        | [List of properties in the form of                          |
|        | \"key1=value1;key2=value2,\...\". Only files with these     |
|        | properties names and values are affected.]{.s1}             |
+--------+-------------------------------------------------------------+
| \--e   | ::: content-wrapper                                         |
| xclude | \[Optional\]                                                |
| -props |                                                             |
|        | A list of Artifactory                                       |
|        | [properties](https://www.jfrog.com/conflu                   |
|        | ence/display/RTF/Properties){style="text-decoration:none;"} |
|        | specified as \"key=value\" pairs separated by a semi-colon  |
|        | (for example, \"key1=value1;key2=value2;key3=value3\").     |
|        | Only artifacts **without all** of the specified properties  |
|        | names and values will be affected.                          |
|        | :::                                                         |
+--------+-------------------------------------------------------------+
| \--rec | \[Default: true\]                                           |
| ursive |                                                             |
|        | [When false, artifacts inside sub-folders in Artifactory    |
|        | will not be affected.]{.s1}                                 |
+--------+-------------------------------------------------------------+
| \-     | [\[Optional\]]{.s1}                                         |
| -build |                                                             |
|        | If specified, only artifacts of the specified build are     |
|        | matched. The property format is build-name/build-number. If |
|        | you do not specify the build number, the artifacts are      |
|        | filtered by the latest build number.                        |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\] If specified, only artifacts of the specified  |
| bundle | bundle are matched. The value format is                     |
|        | bundle-name/bundle-version.                                 |
+--------+-------------------------------------------------------------+
| \--    | [\[Default: false\]]{.s1}                                   |
| includ |                                                             |
| e-dirs | When true, the properties will also be set on folders (and  |
|        | not just files) in Artifactory.                             |
+--------+-------------------------------------------------------------+
| \      | \[Default: false\]                                          |
| --fail |                                                             |
| -no-op | Set to true if you\'d like the command to return exit code  |
|        | 2 in case of no files are affected.                         |
+--------+-------------------------------------------------------------+
| [\     | [A list of Semicolon-separated exclude patterns.            |
| --excl | A]{.s1}llows using wildcards.                               |
| usions |                                                             |
| ]{.s1} |                                                             |
+--------+-------------------------------------------------------------+
| \--s   | \[Optional\]                                                |
| ort-by |                                                             |
|        | A list of semicolon-separated fields to sort by. The fields |
|        | must be part of the \'items\' AQL domain. For more          |
|        | information read the [AQL                                   |
|        | documentation](https://www.j                                |
|        | frog.com/confluence/display/RTF/Artifactory+Query+Language# |
|        | ArtifactoryQueryLanguage-EntitiesandFields){rel="nofollow"} |
+--------+-------------------------------------------------------------+
| \      | \[Default: asc\]                                            |
| --sort |                                                             |
| -order | The order by which fields in the \'sort-by\' option should  |
|        | be sorted. Accepts \'asc\' or \'desc\'.                     |
+--------+-------------------------------------------------------------+
| \-     | \[Optional\]                                                |
| -limit |                                                             |
|        | The maximum number of items to fetch. Usually used with the |
|        | \'sort-by\' option.                                         |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| offset |                                                             |
|        | The offset from which to fetch items (i.e. how many items   |
|        | should be skipped). Usually used with the \'sort-by\'       |
|        | option.                                                     |
+--------+-------------------------------------------------------------+
| \--arc | \[Optional\]                                                |
| hive-e |                                                             |
| ntries | If specified, only archive artifacts containing entries     |
|        | matching this pattern are matched. You can use wildcards to |
|        | specify multiple artifacts.                                 |
+--------+-------------------------------------------------------------+
| \--    | \[Default: false\]                                          |
| insecu |                                                             |
| re-tls | Set to true to skip TLS certificates verification.          |
+--------+-------------------------------------------------------------+
| \--t   | \[Default: 3\]                                              |
| hreads |                                                             |
|        | Number of working threads.                                  |
+--------+-------------------------------------------------------------+
| \--r   | \[Default: 3\]                                              |
| etries |                                                             |
|        | Number of HTTP retry attempts.                              |
+--------+-------------------------------------------------------------+
| \--ret | \[Default: 0s\]                                             |
| ry-wai |                                                             |
| t-time | Number of seconds or milliseconds to wait between retries.  |
|        | The numeric value should either end with s for seconds or   |
|        | ms for milliseconds.                                        |
+--------+-------------------------------------------------------------+
| ##     | The command takes two arguments.                            |
| ### Co |                                                             |
| mmand  |                                                             |
| argume |                                                             |
| nts {# |                                                             |
| CLIfor |                                                             |
| JFrogA |                                                             |
| rtifac |                                                             |
| tory-C |                                                             |
| ommand |                                                             |
| argume |                                                             |
| nts.7} |                                                             |
+--------+-------------------------------------------------------------+
| Files  | Files that match the pattern will be set with the specified |
| p      | properties.                                                 |
| attern |                                                             |
+--------+-------------------------------------------------------------+
| Files  | [The list of properties, in the form of                     |
| prop   | key1=value1;key2=value2,\..., to be set on the matching     |
| erties | artifacts.]{.s1}                                            |
+--------+-------------------------------------------------------------+
:::

#### Example {#CLIforJFrogArtifactory-Example}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.7}

Set the properties on all the zip files in the generic-local repository.
The command will set the property \"a\" with \"1\" value and the
property \"b\" with two values: \"2\" and \"3\".

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt sp "generic-local/*.zip" "a=1;b=2,3"
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.7}

The command will set the property \"a\" with \"1\" value and the
property \"b\" with two values: \"2\" and \"3\" on all files found by
the File Spec my-spec.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt sp "a=1;b=2,3" --spec my-spec
```
:::
:::

### [Deleting Properties from Files]{style="color: rgb(0,100,0);font-size: 16.0px;font-weight: bold;letter-spacing: -0.006em;"} {#CLIforJFrogArtifactory-DeletingPropertiesfromFiles}

This command is used for deleting properties from existing files in
Artifactory.

::: table-wrap
+--------+-------------------------------------------------------------+
| ####   | rt delete-props                                             |
| # Comm |                                                             |
| and na |                                                             |
| me {#C |                                                             |
| LIforJ |                                                             |
| FrogAr |                                                             |
| tifact |                                                             |
| ory-Co |                                                             |
| mmandn |                                                             |
| ame.8} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | rt delp                                                     |
|  Abbre |                                                             |
| viatio |                                                             |
| n {#CL |                                                             |
| IforJF |                                                             |
| rogArt |                                                             |
| ifacto |                                                             |
| ry-Abb |                                                             |
| reviat |                                                             |
| ion.8} |                                                             |
+--------+-------------------------------------------------------------+
| ####   | ::: content-wrapper                                         |
| # Comm | ::: {.confl                                                 |
| and op | uence-information-macro .confluence-information-macro-note} |
| tions  | []{.aui-icon .aui-icon-small .aui-iconfont-warning          |
| {#CLIf | .confluence-information-macro-icon}                         |
| orJFro |                                                             |
| gArtif | ::: confluence-information-macro-body                       |
| actory | When using the \* or ; characters in the command options or |
| -Comma | arguments, make sure to wrap the whole options or arguments |
| ndopti | string in quotes (\") to make sure the \* or ; characters   |
| ons.8} | are not interpreted as literals.                            |
|        | :::                                                         |
|        | :::                                                         |
|        | :::                                                         |
+--------+-------------------------------------------------------------+
| \--ser | \[Optional\]                                                |
| ver-id |                                                             |
|        | [Artifactory server ID configured using the config command. |
|        | If not specified, the default configured Artifactory server |
|        | is used.]{.s1}                                              |
+--------+-------------------------------------------------------------+
| \-     | \[Optional\]                                                |
| -props |                                                             |
|        | [List of properties in the form of                          |
|        | \"key1=value1;key2=value2,\...\". Only files with these     |
|        | properties are affected.]{.s1}                              |
+--------+-------------------------------------------------------------+
| \--e   | ::: content-wrapper                                         |
| xclude | \[Optional\]                                                |
| -props |                                                             |
|        | A list of Artifactory                                       |
|        | [properties](https://www.jfrog.com/conflu                   |
|        | ence/display/RTF/Properties){style="text-decoration:none;"} |
|        | specified as \"key=value\" pairs separated by a semi-colon  |
|        | (for example, \"key1=value1;key2=value2;key3=value3\").     |
|        | Only artifacts **without all** of the specified properties  |
|        | names and values will be affedcted.                         |
|        | :::                                                         |
+--------+-------------------------------------------------------------+
| \--rec | \[Default: true\]                                           |
| ursive |                                                             |
|        | [When false, artifacts inside sub-folders in Artifactory    |
|        | will not be affected.]{.s1}                                 |
+--------+-------------------------------------------------------------+
| \-     | [\[Optional\]]{.s1}                                         |
| -build |                                                             |
|        | If specified, only artifacts of the specified build are     |
|        | matched. The property format is build-name/build-number. If |
|        | you do not specify the build number, the artifacts are      |
|        | filtered by the latest build number.                        |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| bundle |                                                             |
|        | If specified, only artifacts of the specified bundle are    |
|        | matched. The value format is bundle-name/bundle-version.    |
+--------+-------------------------------------------------------------+
| \--    | [\[Default: false\]]{.s1}                                   |
| includ |                                                             |
| e-dirs | When true, the properties will also be set on folders (and  |
|        | not just files) in Artifactory.                             |
+--------+-------------------------------------------------------------+
| \      | \[Default: false\]                                          |
| --fail |                                                             |
| -no-op | Set to true if you\'d like the command to return exit code  |
|        | 2 in case of no files are affected.                         |
+--------+-------------------------------------------------------------+
| [\     | [A list of Semicolon-separated exclude patterns.            |
| --excl | A]{.s1}llows using wildcards.                               |
| usions |                                                             |
| ]{.s1} |                                                             |
+--------+-------------------------------------------------------------+
| \--s   | \[Optional\]                                                |
| ort-by |                                                             |
|        | A list of semicolon-separated fields to sort by. The fields |
|        | must be part of the \'items\' AQL domain. For more          |
|        | information read the [AQL                                   |
|        | documentation](https://www.j                                |
|        | frog.com/confluence/display/RTF/Artifactory+Query+Language# |
|        | ArtifactoryQueryLanguage-EntitiesandFields){rel="nofollow"} |
+--------+-------------------------------------------------------------+
| \      | \[Default: asc\]                                            |
| --sort |                                                             |
| -order | The order by which fields in the \'sort-by\' option should  |
|        | be sorted. Accepts \'asc\' or \'desc\'.                     |
+--------+-------------------------------------------------------------+
| \-     | \[Optional\]                                                |
| -limit |                                                             |
|        | The maximum number of items to fetch. Usually used with the |
|        | \'sort-by\' option.                                         |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| offset |                                                             |
|        | The offset from which to fetch items (i.e. how many items   |
|        | should be skipped). Usually used with the \'sort-by\'       |
|        | option.                                                     |
+--------+-------------------------------------------------------------+
| \--arc | \[Optional\]                                                |
| hive-e |                                                             |
| ntries | If specified, only archive artifacts containing entries     |
|        | matching this pattern are matched. You can use wildcards to |
|        | specify multiple artifacts.                                 |
+--------+-------------------------------------------------------------+
| \--    | \[Default: false\]                                          |
| insecu |                                                             |
| re-tls | Set to true to skip TLS certificates verification.          |
+--------+-------------------------------------------------------------+
| \--r   | \[Default: 3\]                                              |
| etries |                                                             |
|        | Number of HTTP retry attempts.                              |
+--------+-------------------------------------------------------------+
| \      | \[Default: 0s\]                                             |
| --retr |                                                             |
| uy-wai | Number of seconds or milliseconds to wait between retries.  |
| t-time | The numeric value should either end with s for seconds or   |
|        | ms for milliseconds.retry-wait-time                         |
+--------+-------------------------------------------------------------+
| ##     | The command takes two arguments.                            |
| ### Co |                                                             |
| mmand  |                                                             |
| argume |                                                             |
| nts {# |                                                             |
| CLIfor |                                                             |
| JFrogA |                                                             |
| rtifac |                                                             |
| tory-C |                                                             |
| ommand |                                                             |
| argume |                                                             |
| nts.8} |                                                             |
+--------+-------------------------------------------------------------+
| Files  | The properties will be deleted from files that match the    |
| p      | pattern.                                                    |
| attern |                                                             |
+--------+-------------------------------------------------------------+
| Files  | [The list of properties, in the form of key1,key2,\..., to  |
| prop   | be deleted from the matching artifacts.]{.s1}               |
| erties |                                                             |
+--------+-------------------------------------------------------------+
:::

#### Example {#CLIforJFrogArtifactory-Example.1}

Delete the \"status\" and \"phase\" properties from all the zip files in
the generic-local repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt delp "generic-local/*.zip" "status,phase"
```
:::
:::

### Creating Access Tokens {#CLIforJFrogArtifactory-CreatingAccessTokens}

This command allows creating [Access
Tokens](https://www.jfrog.com/confluence/display/JFROG/Access+Tokens)
for users in Artifactory

::: table-wrap
+-------+--------------------------------------------------------------+
| ###   | rt access-token-create                                       |
| ## Co |                                                              |
| mmand |                                                              |
|  name |                                                              |
|  {#CL |                                                              |
| IforJ |                                                              |
| FrogA |                                                              |
| rtifa |                                                              |
| ctory |                                                              |
| -Comm |                                                              |
| andna |                                                              |
| me.9} |                                                              |
+-------+--------------------------------------------------------------+
| ####  | rt atc                                                       |
| # Abb |                                                              |
| revia |                                                              |
| tion  |                                                              |
| {#CLI |                                                              |
| forJF |                                                              |
| rogAr |                                                              |
| tifac |                                                              |
| tory- |                                                              |
| Abbre |                                                              |
| viati |                                                              |
| on.9} |                                                              |
+-------+--------------------------------------------------------------+
| ####  | \                                                            |
| # Com |                                                              |
| mand  |                                                              |
| optio |                                                              |
| ns {# |                                                              |
| CLIfo |                                                              |
| rJFro |                                                              |
| gArti |                                                              |
| facto |                                                              |
| ry-Co |                                                              |
| mmand |                                                              |
| optio |                                                              |
| ns.9} |                                                              |
+-------+--------------------------------------------------------------+
| [\--g | [\[Default: \*\] ]{.s1}                                      |
| roups |                                                              |
| ]     | [A list of comma-separated groups for the access token to be |
| {.s1} | associated with. Specify \* to indicate that this is a       |
|       | \'user-scoped token\', i.e., the token provides the same     |
|       | access privileges that the current subject has, and is       |
|       | therefore evaluated dynamically. A non-admin user can only   |
|       | provide a scope that is a subset of the groups to which he   |
|       | belongs]{.s1}                                                |
+-------+--------------------------------------------------------------+
| [     | [\[Default: false\] ]{.s1}                                   |
| \--gr |                                                              |
| ant-a | [Set to true to provides admin privileges to the access      |
| dmin] | token. This is only available for administrators.]{.s1}      |
| {.s1} |                                                              |
+-------+--------------------------------------------------------------+
| [     | ::: content-wrapper                                          |
| \--ex | [\[Default: 3600\] ]{.s1}                                    |
| piry] |                                                              |
| {.s1} | [The time in seconds for which the token will be valid. To   |
|       | specify a token that never expires, set to zero. Non-admin   |
|       | can only set a value that is equal to or less than the       |
|       | default 3600.]{.s1}                                          |
|       | :::                                                          |
+-------+--------------------------------------------------------------+
| [     | [\[Default: false\] ]{.s1}                                   |
| \--re |                                                              |
| fresh | [Set to true if you\'d like the the token to be refreshable. |
| able] | A refresh token will also be returned in order to be used to |
| {.s1} | generate a new token once it expires.]{.s1}                  |
+-------+--------------------------------------------------------------+
| [\    | [\[Optional\] ]{.s1}                                         |
| --aud |                                                              |
| ience | [A space-separate list of the other Artifactory instances or |
| ]     | services that should accept this token identified by their   |
| {.s1} | Artifactory Service IDs, as obtained by the \'jf rt curl     |
|       | api/system/service_id\' command.]{.s1}                       |
+-------+--------------------------------------------------------------+
| ###   | \                                                            |
| ## Co |                                                              |
| mmand |                                                              |
|  argu |                                                              |
| ments |                                                              |
|  {#CL |                                                              |
| IforJ |                                                              |
| FrogA |                                                              |
| rtifa |                                                              |
| ctory |                                                              |
| -Comm |                                                              |
| andar |                                                              |
| gumen |                                                              |
| ts.9} |                                                              |
+-------+--------------------------------------------------------------+
| use   | [Optional - The user name for which this token is created.   |
| rname | If not specified, the configured user is used.]{.s1}         |
+-------+--------------------------------------------------------------+
:::

#### **Examples** {#CLIforJFrogArtifactory-Examples.8}

Create an access token for the user with the *commander-will-riker*
username.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt atc commander-will-riker
```
:::
:::

### Cleaning Up Unreferenced Files from a Git LFS Repository {#CLIforJFrogArtifactory-CleaningUpUnreferencedFilesfromaGitLFSRepository}

This command is used to clean up files from a Git LFS repository. This
deletes all files from a Git LFS repository, which are no longer
referenced in a corresponding Git repository.

::: table-wrap
+----------------------------------+----------------------------------+
| ##### Command name {#CLIfor      | [rt git-lfs-clean]{.s1}          |
| JFrogArtifactory-Commandname.10} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | rt glc                           |
| FrogArtifactory-Abbreviation.10} |                                  |
+----------------------------------+----------------------------------+
| #                                | \                                |
| #### Command options {#CLIforJFr |                                  |
| ogArtifactory-Commandoptions.10} |                                  |
+----------------------------------+----------------------------------+
| [\--refs]{.s1}                   | [\[Default: refs/remotes/\*\]    |
|                                  | List of Git references in the    |
|                                  | form of \"ref1,ref2,\...\" which |
|                                  | should be preserved.]{.s1}       |
+----------------------------------+----------------------------------+
| [\--repo]{.s1}                   | [\[Optional\] Local Git LFS      |
|                                  | repository in Artifactory which  |
|                                  | should be cleaned. If omitted,   |
|                                  | the repository is detected from  |
|                                  | the Git repository.]{.s1}        |
+----------------------------------+----------------------------------+
| [\--quiet]{.s1}                  | ::: content-wrapper              |
|                                  | [\[Default: false\] Set to true  |
|                                  | to skip the delete confirmation  |
|                                  | message.]{.s1}                   |
|                                  | :::                              |
+----------------------------------+----------------------------------+
| [\--dry-run]{.s1}                | [\[Default: false\] If true,     |
|                                  | cleanup is only simulated. No    |
|                                  | files are actually               |
|                                  | deleted.]{.s1}                   |
+----------------------------------+----------------------------------+
| #####                            | If no arguments are passed in,   |
|  Command arguments {#CLIforJFrog | the command assumes the .git     |
| Artifactory-Commandarguments.10} | repository is located at current |
|                                  | directory.                       |
+----------------------------------+----------------------------------+
| path to .git                     | Path to the directory which      |
|                                  | includes the .git directory.     |
+----------------------------------+----------------------------------+
:::

#### **Examples** {#CLIforJFrogArtifactory-Examples.9}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.8}

Cleans up Git LFS files from Artifactory, using the configuration in the
.git directory located at the current directory.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt glc
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.8}

Cleans up Git LFS files from Artifactory, using the configuration in the
.git directory located inside the path/to/git/config directory.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt glc path/to/git/config
```
:::
:::

------------------------------------------------------------------------

### Running cUrl {#CLIforJFrogArtifactory-RunningcUrl}

[Execute a cUrl command, using the configured Artifactory details. The
command expects the cUrl client to be included in the PATH. ]{.s1}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[This command supports only Artifactory REST APIs, which are accessible
under *https://\<JFrog base
URL\>/artifactory/api/*]{style="color: rgb(34,34,34);"}
:::
:::

::: table-wrap
+-------------------------------+-------------------------------+---+
| #                             | rt curl                       | \ |
| #### Command name {#CLIforJFr |                               |   |
| ogArtifactory-Commandname.11} |                               |   |
+-------------------------------+-------------------------------+---+
| ##                            | rt cl                         | \ |
| ### Abbreviation {#CLIforJFro |                               |   |
| gArtifactory-Abbreviation.11} |                               |   |
+-------------------------------+-------------------------------+---+
| ##### C                       | \                             | \ |
| ommand options {#CLIforJFrogA |                               |   |
| rtifactory-Commandoptions.11} |                               |   |
+-------------------------------+-------------------------------+---+
| [\--server-id]{.s1}           | \[Optional\]                  | \ |
|                               |                               |   |
|                               | [Server ID configured using   |   |
|                               | the *jfrog c add* command. If |   |
|                               | not specified, the default    |   |
|                               | configured server is          |   |
|                               | used.]{.s1}                   |   |
+-------------------------------+-------------------------------+---+
| ##### Comma                   | \                             | \ |
| nd arguments {#CLIforJFrogArt |                               |   |
| ifactory-Commandarguments.11} |                               |   |
+-------------------------------+-------------------------------+---+
| cUrl arguments and flags      | The same list of arguments    | \ |
|                               | and flags passed to cUrl,     |   |
|                               | except for the following      |   |
|                               | changes:                      |   |
|                               |                               |   |
|                               | 1.  The full Artifactory URL  |   |
|                               |     should not be passed.     |   |
|                               |     Instead, the REST         |   |
|                               |     endpoint URI should be    |   |
|                               |     sent.                     |   |
|                               | 2.  The login credentials     |   |
|                               |     should not be passed.     |   |
|                               |     Instead, the \--server-id |   |
|                               |     should be used.           |   |
+-------------------------------+-------------------------------+---+
:::

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
Currently only servers configured with username and password / API key
are supported.
:::
:::

\

#### **Examples** {#CLIforJFrogArtifactory-Examples.10}

##### **Example 1** {#CLIforJFrogArtifactory-Example1.9}

Execute the cUrl client, to sent a GET request to the /api/build
endpoint to the default Artifactory server

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt curl -XGET /api/build
```
:::
:::

##### **Example 2** {#CLIforJFrogArtifactory-Example2.9}

Execute the cUrl client, to send a GET request to the /api/build
endpoint to the configured my-rt-server server ID.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt curl -XGET /api/build --server-id my-rt-server
```
:::
:::

------------------------------------------------------------------------

## Build Integration {#CLIforJFrogArtifactory-BuildIntegration}

### Overview {#CLIforJFrogArtifactory-Overview.1}

JFrog CLI integrates with any development ecosystem allowing you to
collect build-info and then publish it to Artifactory. By publishing
build-info to Artifactory, JFrog CLI empowers Artifactory to provide
visibility into artifacts deployed, dependencies used and extensive
information on the build environment to allow fully traceable builds.
Read more about build-info and build integration with Artifactory
[here](https://www.jfrog.com/confluence/display/JFROG/Build+Integration).

Many of JFrog CLI\'s commands accept two optional command
options: ***\--build-name*** and ***\--build-number***. When these
options are added, JFrog CLI collects and records the build info locally
for these commands. \
When running multiple commands using the same build and build number,
JFrog CLI aggregates the collected build info into one build.\
The recorded build-info can be later published to Artifactory using
the [build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation) command.

### Collecting Build-Info {#CLIforJFrogArtifactory-CollectingBuild-Info}

Build-info is collected by adding
the `--build-name` and `--build-number` options to different CLI
commands. The CLI commands can be run several times and cumulatively
collect build-info for the specified build name and number until it is
published to Artifactory. For example, running
the [download](#CLIforJFrogArtifactory-DownloadingFiles) command several
times with the same build name and number will accumulate each
downloaded file in the corresponding build-info. 

#### Collecting Dependencies {#CLIforJFrogArtifactory-CollectingDependencies}

Dependencies are collected by
adding  the `--build-name` and `--build-number` options to
the [download](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-DownloadingFiles) command .

For example, the following command downloads the `cool-froggy.zip` file
found in repository `my-local-repo` , but it also specifies this file as
a dependency in build `my-build-name` with build number 18:

::: table-wrap
  ---------------------------------------------------------------------------------------------------------------------
  `jf rt dl my-local-repo/cool-froggy.zip --build-name=my-build-name --build-number=`{.java .plain}`18`{.java .value}
  ---------------------------------------------------------------------------------------------------------------------
:::

#### Collecting Build Artifacts {#CLIforJFrogArtifactory-CollectingBuildArtifacts}

Build artifacts are collected by
adding  the `--build-name` and `--build-number` options to
the [upload](#CLIforJFrogArtifactory-UploadingFiles) command. 

For example, the following command specifies that
file [`froggy.tgz`]{style="color: rgb(0,0,0);"} uploaded to
repository `my-local-repo` is a build artifact of
build `my-build-name` with build number 18:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt u froggy.tgz my-local-repo --build-name=my-build-name --build-number=18
```
:::
:::

#### Collecting Environment Variables {#CLIforJFrogArtifactory-CollectingEnvironmentVariables}

This command is used to collect environment variables and attach them to
a build.

Environment variables are collected using
the `build-collect-env` (`bce`) command.

For example, the following command collects all currently known
environment variables, and attaches them to the build-info for
build `my-build-name` with build number 18:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt bce my-build-name 18
```
:::
:::

The following table lists the command arguments and flags:

::: table-wrap
+----------------------------------+----------------------------------+
| ##### Command name {#CLIfor      | [rt build-collect-env]{.s1}      |
| JFrogArtifactory-Commandname.12} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | rt bce                           |
| FrogArtifactory-Abbreviation.12} |                                  |
+----------------------------------+----------------------------------+
| #                                | ::: content-wrapper              |
| #### Command options {#CLIforJFr | \                                |
| ogArtifactory-Commandoptions.12} | :::                              |
+----------------------------------+----------------------------------+
| \--project                       | [\[Optional\]]{.s1}              |
|                                  |                                  |
|                                  | JFrog project key.               |
+----------------------------------+----------------------------------+
| #####                            | The command accepts two          |
|  Command arguments {#CLIforJFrog | arguments.                       |
| Artifactory-Commandarguments.12} |                                  |
+----------------------------------+----------------------------------+
| Build name                       | Build name.                      |
+----------------------------------+----------------------------------+
| Build number                     | Build number.                    |
+----------------------------------+----------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.2}

Collect environment variables for build name: frogger-build and build
number: 17

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
 jf rt bce frogger-build 17
```
:::
:::

#### [ ]{style="color: inherit;"} {#CLIforJFrogArtifactory-}

#### [Collecting Information from Git]{style="color: inherit;"} {#CLIforJFrogArtifactory-CollectingInformationfromGit}

The `build-add-git` (bag) command collects the Git revision and URL from
the local .git directory and adds it to the build-info. It can also
collect the list of tracked project issues (for example, issues stored
in JIRA or other bug tracking systems) and add them to the build-info.
The issues are collected by reading the git commit messages from the
local git log. Each commit message is matched against a pre-configured
regular expression, which retrieves the issue ID and issue summary. The
information required for collecting the issues is retrieved from a yaml
configuration file provided to the command.

The following table lists the command arguments and flags:

::: table-wrap
+----------------------------------+----------------------------------+
| ##### Command name {#CLIfor      | rt build-add-git                 |
| JFrogArtifactory-Commandname.13} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | rt bag                           |
| FrogArtifactory-Abbreviation.13} |                                  |
+----------------------------------+----------------------------------+
| #                                | ::: content-wrapper              |
| #### Command options {#CLIforJFr | \                                |
| ogArtifactory-Commandoptions.13} | :::                              |
+----------------------------------+----------------------------------+
| \--config                        | [\[Optional\]]{.s1}              |
|                                  |                                  |
|                                  | [Path to a yaml configuration    |
|                                  | file, used for collecting        |
|                                  | tracked project issues and       |
|                                  | adding them to the build-info.   |
|                                  | ]{.s1}                           |
+----------------------------------+----------------------------------+
| \--server-id                     | [\[Optional\] ]{.s1}             |
|                                  |                                  |
|                                  | [Server ID configured using the  |
|                                  | [jfrog config                    |
|                                  | comma                            |
|                                  | nd](https://www.jfrog.com/conflu |
|                                  | ence/display/CLI/JFrog+CLI#JFrog |
|                                  | CLI-JFrogPlatformConfiguration). |
|                                  | This is the server to which the  |
|                                  | build-info will be later         |
|                                  | published, using                 |
|                                  | the  [`                          |
|                                  | build-publish` (`bp`)](https://w |
|                                  | ww.jfrog.com/confluence/display/ |
|                                  | CLI/CLI+for+JFrog+Artifactory#CL |
|                                  | IforJFrogArtifactory-BuildIntegr |
|                                  | ation-PublishingaBuild) command. |
|                                  | This option, if provided,        |
|                                  | overrides the serverID value in  |
|                                  | this command\'s yaml             |
|                                  | configuration. If both values    |
|                                  | are not provided, the default    |
|                                  | server, configured by the [jfrog |
|                                  | config                           |
|                                  | comma                            |
|                                  | nd](https://www.jfrog.com/conflu |
|                                  | ence/display/CLI/JFrog+CLI#JFrog |
|                                  | CLI-JFrogPlatformConfiguration), |
|                                  | is used.]{.s1}                   |
+----------------------------------+----------------------------------+
| \--project                       | [\[Optional\]]{.s1}              |
|                                  |                                  |
|                                  | JFrog project key.               |
+----------------------------------+----------------------------------+
| #####                            | The command accepts three        |
|  Command arguments {#CLIforJFrog | arguments.                       |
| Artifactory-Commandarguments.13} |                                  |
+----------------------------------+----------------------------------+
| Build name                       | Build name.                      |
+----------------------------------+----------------------------------+
| Build number                     | Build number.                    |
+----------------------------------+----------------------------------+
| .git path                        | Optional - Path to a directory   |
|                                  | containing the .git directory.   |
|                                  | If not specific, the .git        |
|                                  | directory is assumed to be in    |
|                                  | the current directory or in one  |
|                                  | of the parent directories.       |
+----------------------------------+----------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.3}

::: table-wrap
  -----------------------------------------------------------------------------------------
  `jf rt bag frogger-build `{.java .plain}`17`{.java .value} `checkout-dir`{.java .plain}
  -----------------------------------------------------------------------------------------
:::

This is the configuration file structure.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
version: 1
issues: 
  # The serverID yaml property is optional. The --server-id command option, if provided, overrides the serverID value.
  # If both the serverID property and the --server-id command options are not provided,
  # the default server, configured by the "jfrog config add" command is used.
  serverID: my-artifactory-server

  trackerName: JIRA
  regexp: (.+-[0-9]+)\s-\s(.+)
  keyGroupIndex: 1
  summaryGroupIndex: 2
  trackerUrl: http://my-jira.com/issues
  aggregate: true
  aggregationStatus: RELEASED
```
:::
:::

##### Configuration file properties {#CLIforJFrogArtifactory-Configurationfileproperties}

::: table-wrap
+----------+-----------------------------------------------------------+
| Property | Description                                               |
| name     |                                                           |
+----------+-----------------------------------------------------------+
| Version  | The schema version is intended for internal use. Do not   |
|          | change!                                                   |
+----------+-----------------------------------------------------------+
| serverID | Artifactory server ID configured by the [jfrog config     |
|          | command](https://www.jfrog.com/confluence/di              |
|          | splay/CLI/JFrog+CLI#JFrogCLI-JFrogPlatformConfiguration). |
|          | The command uses this server for fetching details about   |
|          | previous published builds. The *\--server-id* command     |
|          | option, if provided, overrides the *serverID* value.\     |
|          | If both the *serverID* property and the *\--server-id*    |
|          | command options are not provided, the default server,     |
|          | configured by the [jfrog config                           |
|          | command](https://www.jfrog.com/confluence/disp            |
|          | lay/CLI/JFrog+CLI#JFrogCLI-JFrogPlatformConfiguration) is |
|          | used.                                                     |
+----------+-----------------------------------------------------------+
| tra      | The name (type) of the issue tracking system. For         |
| ckerName | example, JIRA. This property can take any value.          |
+----------+-----------------------------------------------------------+
| regexp   | A regular expression used for matching the git commit     |
|          | messages. The expression should include two capturing     |
|          | groups - for the issue key (ID) and the issue summary. In |
|          | the example above, the regular expression matches the     |
|          | commit messages as displayed in the following example:    |
|          |                                                           |
|          | *HAP-1007 - This is a sample issue*                       |
+----------+-----------------------------------------------------------+
| keyGr    | The capturing group index in the regular expression used  |
| oupIndex | for retrieving the issue key. In the example above,       |
|          | setting the index to \"1\" retrieves *HAP-1007* from this |
|          | commit message:                                           |
|          |                                                           |
|          | *HAP-1007 - This is a sample issue*                       |
+----------+-----------------------------------------------------------+
| s        | The capturing group index in the regular expression for   |
| ummaryGr | retrieving the issue summary. In the example above,       |
| oupIndex | setting the index to \"2\" retrieves *the* sample issue   |
|          | from this commit message:                                 |
|          |                                                           |
|          | *HAP-1007 - This is a sample issue*                       |
+----------+-----------------------------------------------------------+
| tr       | The issue tracking URL. This value is used for            |
| ackerUrl | constructing a direct link to the issues in the           |
|          | Artifactory build UI.                                     |
+----------+-----------------------------------------------------------+
| a        | Set to true, if you wish all builds to include issues     |
| ggregate | from previous builds.                                     |
+----------+-----------------------------------------------------------+
| a        | If aggregate is set to true, this property indicates how  |
| ggregati | far in time should the issues be aggregated. In the above |
| onStatus | example, issues will be aggregated from previous builds,  |
|          | until a build with a RELEASE status is found. Build       |
|          | statuses are set when a build is promoted using the *jf   |
|          | rt build-promote* command.                                |
+----------+-----------------------------------------------------------+
:::

#### Adding Files as Build Dependencies {#CLIforJFrogArtifactory-AddingFilesasBuildDependencies}

The download command, as well as other commands which download
dependencies from Artifactory accept
the ***\--build-name*** and ***\--build-number*** command options.
Adding these options records the downloaded files as build dependencies.
In some cases however, [it is necessary to add a
file]{style="letter-spacing: 0.0px;"}[, which has been downloaded by
another tool, to a build. Use the *build-add-dependencies* command to to
this.]{style="letter-spacing: 0.0px;"}

[By default, the command collects the files from the local file system.
If you\'d like the files to be collected from Artifactory however, add
the *\--from-rt* option to the command.]{style="letter-spacing: 0.0px;"}

::: table-wrap
+--------+-------------------------------------------------------------+
| #####  | [rt build-add-dependencies]{.s1}                            |
|  Comma |                                                             |
| nd nam |                                                             |
| e {#CL |                                                             |
| IforJF |                                                             |
| rogArt |                                                             |
| ifacto |                                                             |
| ry-Com |                                                             |
| mandna |                                                             |
| me.14} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | rt bad                                                      |
| Abbrev |                                                             |
| iation |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Abbr |                                                             |
| eviati |                                                             |
| on.14} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | ::: content-wrapper                                         |
|  Comma | ::: {.confl                                                 |
| nd opt | uence-information-macro .confluence-information-macro-note} |
| ions { | []{.aui-icon .aui-icon-small .aui-iconfont-warning          |
| #CLIfo | .confluence-information-macro-icon}                         |
| rJFrog |                                                             |
| Artifa | ::: confluence-information-macro-body                       |
| ctory- | When using the \* or ; characters in the command options or |
| Comman | arguments, make sure to wrap the whole options or arguments |
| doptio | string in quotes (\") to make sure the \* or ; characters   |
| ns.14} | are not interpreted as literals.                            |
|        | :::                                                         |
|        | :::                                                         |
|        | :::                                                         |
+--------+-------------------------------------------------------------+
| \--f   | [\[Default: false\] ]{.s1}                                  |
| rom-rt |                                                             |
|        | [Set to true to search the files in Artifactory, rather     |
|        | than on the local file system. The \--regexp option is not  |
|        | supported when \--from-rt is set to true.]{.s1}             |
+--------+-------------------------------------------------------------+
| [      | [\[Optional\] ]{.s1}                                        |
| \--ser |                                                             |
| ver-id | [Server ID configured using the config command.]{.s1}       |
| ]{.s1} |                                                             |
+--------+-------------------------------------------------------------+
| [\     | \[Optional\]                                                |
| --spec |                                                             |
| ]{.s1} | [Path to a File Spec.]{.s1}                                 |
+--------+-------------------------------------------------------------+
| [      | \[Optional\]                                                |
| \--spe |                                                             |
| c-vars | [List of variables in the form of                           |
| ]{.s1} | \"key1=value1;key2=value2;\...\" to be replaced in the File |
|        | Spec. In the File Spec, the variables should be used as     |
|        | follows: \${key1}.]{.s1}                                    |
+--------+-------------------------------------------------------------+
| \--rec | \[Default: true\]                                           |
| ursive |                                                             |
|        | [When false, artifacts inside sub-folders in Artifactory    |
|        | will not be affected.]{.s1}                                 |
+--------+-------------------------------------------------------------+
| \--    | [\[Optional: false\]]{.s1}                                  |
| regexp |                                                             |
|        | [\[Default: false\] Set to true to use a regular expression |
|        | instead of wildcards expression to collect files to be      |
|        | added to the build info.This option is not supported when   |
|        | \--from-rt is set to true.]{.s1}                            |
+--------+-------------------------------------------------------------+
| [\--d  | [\[Default: false\]]{.s1}                                   |
| ry-run |                                                             |
| ]{.s1} | [Set to true to only get a summery of the dependencies that |
|        | will be added to the build info.]{.s1}                      |
+--------+-------------------------------------------------------------+
| [\     | [A list of Semicolon-separated exclude patterns.            |
| --excl | A]{.s1}llows using wildcards or a regular                   |
| usions | expression according to the value of the \'regexp\' option. |
| ]{.s1} |                                                             |
+--------+-------------------------------------------------------------+
| ###    | The command takes threee arguments.                         |
| ## Com |                                                             |
| mand a |                                                             |
| rgumen |                                                             |
| ts {#C |                                                             |
| LIforJ |                                                             |
| FrogAr |                                                             |
| tifact |                                                             |
| ory-Co |                                                             |
| mmanda |                                                             |
| rgumen |                                                             |
| ts.14} |                                                             |
+--------+-------------------------------------------------------------+
| Build  | The build name to add the dependencies to                   |
| name   |                                                             |
+--------+-------------------------------------------------------------+
| Build  | The build number to add the dependencies to                 |
| number |                                                             |
+--------+-------------------------------------------------------------+
| P      | [Specifies the local file system path to dependencies which |
| attern | should be added to the build info. ]{.s1}You can specify    |
|        | multiple dependencies by using wildcards or a regular       |
|        | expression as designated by the \--regexp command option.   |
|        | If you have specified that you are using regular            |
|        | expressions, then the first one used in the argument must   |
|        | be enclosed in parenthesis.                                 |
+--------+-------------------------------------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.4}

**Example 1**

Add all files located under the *path/to/build/dependencies/dir/*
directory as depedencies of a build. The build name is *my-build-name*
and the build number is *7*. The build-info is only updated locally. To
publish the build-info to Artifactory use the *jf rt build-publish*
command.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt bad my-build-name 7 "path/to/build/dependencies/dir/"
```
:::
:::

\

**Example 2**

Add all files located in the *m-local-repo* Artifactory repository,
under the *dependencies* folder, as depedencies of a build. The build
name is *my-build-name* and the build number is *7*. [The build-info is
only updated locally. To publish the build-info to Artifactory use the
]{style="letter-spacing: 0.0px;"}*jf rt build-publish*[
command.]{style="letter-spacing: 0.0px;"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt bad my-build-name 7 "my-local-repo/dependencies/" --from-rt
```
:::
:::

### Publishing Build-Info {#CLIforJFrogArtifactory-PublishingBuild-Info}

This command is used to publish build info to Artifactory. To publish
the accumulated build-info for a build to Artifactory, use
the [`build-publish` (`bp`)](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration-PublishingaBuild) command.
For example, the following command publishes all the build-info
collected for build `my-build-name` with build number 18:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf bp my-build-name 18
```
:::
:::

This command is used to publish build info to Artifactory.

::: table-wrap
+----------------------------------+----------------------------------+
| ##### Command name {#CLIfor      | [rt build-publish]{.s1}          |
| JFrogArtifactory-Commandname.15} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | rt bp                            |
| FrogArtifactory-Abbreviation.15} |                                  |
+----------------------------------+----------------------------------+
| #                                | ::: content-wrapper              |
| #### Command options {#CLIforJFr | \                                |
| ogArtifactory-Commandoptions.15} | :::                              |
+----------------------------------+----------------------------------+
| \--server-id                     | \[Optional\]                     |
|                                  |                                  |
|                                  | [Server ID configured using the  |
|                                  | config command. If not           |
|                                  | specified, the default           |
|                                  | configured Artifactory server is |
|                                  | used.]{.s1}                      |
+----------------------------------+----------------------------------+
| \--project                       | \[Optional\]                     |
|                                  |                                  |
|                                  | JFrog project key.               |
+----------------------------------+----------------------------------+
| [\--build-url]{.s1}              | [\[Optional\]]{.s1}              |
|                                  |                                  |
|                                  | [Can be used for setting the CI  |
|                                  | server build URL in the          |
|                                  | build-info.]{.s1}                |
+----------------------------------+----------------------------------+
| \--env-include                   | \[Default: \*\]                  |
|                                  |                                  |
|                                  | [List of patterns in the form of |
|                                  | \"value1;value2;\...\" Only      |
|                                  | environment variables that match |
|                                  | those patterns will be included  |
|                                  | in the build info.]{.s1}         |
+----------------------------------+----------------------------------+
| \--env-exclude                   | [\[Default:                      |
|                                  | \*passw                          |
|                                  | ord\*;\*secret\*;\*key\*\]]{.s1} |
|                                  |                                  |
|                                  | [List of case                    |
|                                  | insensitive patterns in the form |
|                                  | of \"value1;value2;\...\"        |
|                                  | environment variables match      |
|                                  | those patterns will be           |
|                                  | excluded.]{.s1}                  |
+----------------------------------+----------------------------------+
| [\--dry-run]{.s1}                | [\[Default: false\]]{.s1}        |
|                                  |                                  |
|                                  | [Set to true to disable          |
|                                  | communication with               |
|                                  | Artifactory.]{.s1}               |
+----------------------------------+----------------------------------+
| \--insecure-tls                  | \[Default: false\]               |
|                                  |                                  |
|                                  | Set to true to skip TLS          |
|                                  | certificates verification.       |
+----------------------------------+----------------------------------+
| #####                            | The command accepts two          |
|  Command arguments {#CLIforJFrog | arguments.                       |
| Artifactory-Commandarguments.15} |                                  |
+----------------------------------+----------------------------------+
| Build name                       | Build name to be published.      |
+----------------------------------+----------------------------------+
| Build number                     | Build number to be published.    |
+----------------------------------+----------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.5}

::: table-wrap
  -----------------------------------------------------------
  `jf rt bp my-build-name `{.java .plain}`18`{.java .value}
  -----------------------------------------------------------
:::

------------------------------------------------------------------------

### Aggregating Published Builds {#CLIforJFrogArtifactory-AggregatingPublishedBuilds}

The build-info, which is collected and published to Artifactory by the
*jf rt build-publish* command, can include multiple modules. Each module
in the build-info represents a package, which is the result of a single
build step, or in other words, a JFrog CLI command execution. For
example, the following command adds a module named *m1* to a build named
**my-build** with *1* as the build number:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt upload "a/*.zip" generic-local --build-name my-build --build-number 1 --module m1
```
:::
:::

The following command, adds a second module, named *m2* to the same
build:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt upload "b/*.zip" generic-local --build-name my-build --build-number 1 --module m2
```
:::
:::

You now publish the generated build-info to Artifactory using the
following command:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt build-publish my-build 1
```
:::
:::

Now that you have your build-info published to Artifactory, you can
perform actions on the entire build. For example, you can download,
copy, move or delete all or some of the artifacts of a build. Here\'s
how you do this. 

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt download "*" --build my-build/1
```
:::
:::

[In some cases though, your build is composed of multiple build steps,
which are running on multiple different machines or spread across
different time periods. How do you aggregate those build steps, or in
other words, aggregate those command executions, into one
build-info?]{style="letter-spacing: 0.0px;"}

The way to do this, is to create a separate build-info for every section
of the build, and publish it independently to Artifactory. Once all the
build-info instances are published, you can create a new build-info,
which references all the previously published build-info instances. The
new build-info can be viewed as a \"master\" build-info, which
references other build-info instances.

So the next question is - how can this reference between the two
build-instances be created?

The way to do this is by using the *build-append* command. Running this
command on an unpublished build-info, adds a reference to a different
build-info, which has already been published to Artifactory. This
reference is represented by a new module in the new build-info. The ID
of this module will have the following format: *\<referenced build
name\>/\<referenced build number\>*.

Now, when downloading the artifacts of the \"master\" build, you\'ll
actually be downloading the artifacts of all of its referenced builds.
The examples below demonstrates this,

::: table-wrap
+------------------+---------------------------------------------------+
| ##### Comma      | [rt build-append]{.s1}                            |
| nd name {#CLIfor |                                                   |
| JFrogArtifactory |                                                   |
| -Commandname.16} |                                                   |
+------------------+---------------------------------------------------+
| ##### Abbrev     | rt ba                                             |
| iation {#CLIforJ |                                                   |
| FrogArtifactory- |                                                   |
| Abbreviation.16} |                                                   |
+------------------+---------------------------------------------------+
| #                | ::: content-wrapper                               |
| #### Command opt | This command has no options.                      |
| ions {#CLIforJFr | :::                                               |
| ogArtifactory-Co |                                                   |
| mmandoptions.16} |                                                   |
+------------------+---------------------------------------------------+
| #####            | The command accepts four arguments.               |
|  Command argumen |                                                   |
| ts {#CLIforJFrog |                                                   |
| Artifactory-Comm |                                                   |
| andarguments.16} |                                                   |
+------------------+---------------------------------------------------+
| Build name       | The current (not yet published) build name.       |
+------------------+---------------------------------------------------+
| Build number     | The current (not yet published) build number,     |
+------------------+---------------------------------------------------+
| [build name to   | [The published build name to append to the        |
| append]{.s1}     | current build]{.s1}                               |
+------------------+---------------------------------------------------+
| [build number to | [The published build number to append to the      |
| append]{.s1}     | current build]{.s1}                               |
+------------------+---------------------------------------------------+
:::

##### Requirements {#CLIforJFrogArtifactory-Requirements}

[Artifactory version 7.25.4 and above.]{style="color: rgb(0,0,0);"}

##### Example {#CLIforJFrogArtifactory-Example.6}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
# Create and publish build a/1
jf rt upload "a/*.zip" generic-local --build-name a --build-number 1
jf rt build-publish a 1
# Create and publish build b/1
jf rt upload "b/*.zip" generic-local --build-name b --build-number 1
jf rt build-publish b 1
# Append builds a/1 and b/1 to build aggregating-build/10
jf rt build-append aggregating-build 10 a 1
jf rt build-append aggregating-build 10 b 1
# Publish build aggregating-build/10
jf rt build-publish aggregating-build 10
# Download the artifacts of aggregating-build/10, which is the same as downloadiong the of a/1 and b/1
jf rt download --build aggregating-build/10
```
:::
:::

### Promoting a Build {#CLIforJFrogArtifactory-PromotingaBuild}

This command is used to [promote
build](https://jfrog.com/knowledge-base/how-does-build-promotion-work/){.external-link}
in Artifactory.

::: table-wrap
+----------------------------------+----------------------------------+
| ##### Command name {#CLIfor      | [rt build-promote]{.s1}          |
| JFrogArtifactory-Commandname.17} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | rt bpr                           |
| FrogArtifactory-Abbreviation.17} |                                  |
+----------------------------------+----------------------------------+
| #                                | ::: content-wrapper              |
| #### Command options {#CLIforJFr | \                                |
| ogArtifactory-Commandoptions.17} | :::                              |
+----------------------------------+----------------------------------+
| \--server-id                     | \[Optional\]                     |
|                                  |                                  |
|                                  | [Server ID configured using the  |
|                                  | config command. If not           |
|                                  | specified, the default           |
|                                  | configured Artifactory server is |
|                                  | used.]{.s1}                      |
+----------------------------------+----------------------------------+
| \--project                       | \[Optional\]                     |
|                                  |                                  |
|                                  | JFrog project key.               |
+----------------------------------+----------------------------------+
| \--status                        | \[Optional\]                     |
|                                  |                                  |
|                                  | [Build promotion status.]{.s1}   |
+----------------------------------+----------------------------------+
| \--comment                       | \[Optional\]                     |
|                                  |                                  |
|                                  | [Build promotion comment.]{.s1}  |
+----------------------------------+----------------------------------+
| \--source-repo                   | \[Optional\]                     |
|                                  |                                  |
|                                  | Build promotion source           |
|                                  | repository.                      |
+----------------------------------+----------------------------------+
| \--include-dependencies          | \[Default: false\]               |
|                                  |                                  |
|                                  | If set to true, the build        |
|                                  | dependencies are also promoted.  |
+----------------------------------+----------------------------------+
| \--copy                          | \[Default: false\]               |
|                                  |                                  |
|                                  | If set true, the build artifacts |
|                                  | and dependencies are copied to   |
|                                  | the target repository, otherwise |
|                                  | they are moved.                  |
+----------------------------------+----------------------------------+
| \--props                         | [\[Optional\] ]{.s1}             |
|                                  |                                  |
|                                  | [List of properties in the form  |
|                                  | of                               |
|                                  | \                                |
|                                  | "key1=value1;key2=value2,\...\". |
|                                  | to attach to the build           |
|                                  | artifacts.]{.s1}                 |
+----------------------------------+----------------------------------+
| \--dry-run                       | \[Default: false\]               |
|                                  |                                  |
|                                  | If true, promotion is only       |
|                                  | simulated. The build is not      |
|                                  | promoted.                        |
+----------------------------------+----------------------------------+
| \--insecure-tls                  | \[Default: false\]               |
|                                  |                                  |
|                                  | Set to true to skip TLS          |
|                                  | certificates verification.       |
+----------------------------------+----------------------------------+
| #####                            | The command accepts three        |
|  Command arguments {#CLIforJFrog | arguments.                       |
| Artifactory-Commandarguments.17} |                                  |
+----------------------------------+----------------------------------+
| Build name                       | Build name to be promoted.       |
+----------------------------------+----------------------------------+
| Build number                     | Build number to be promoted.     |
+----------------------------------+----------------------------------+
| Target repository                | Build promotion target           |
|                                  | repository.                      |
+----------------------------------+----------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.7}

::: table-wrap
  ----------------------------------------------------------------------------------------------
  `jf rt bpr my-build-name `{.java .plain}`18`{.java .value} `target-repository`{.java .plain}
  ----------------------------------------------------------------------------------------------
:::

### [Cleaning up the Build]{style="letter-spacing: -0.006em;"} {#CLIforJFrogArtifactory-CleaninguptheBuild}

Build-info is accumulated by the CLI according to the commands you apply
until you publish the build-info to Artifactory. If, for any reason, you
wish to \"reset\" the build-info and cleanup (i.e. delete) any
information accumulated so far, you can use the `build-clean` (`bc`)
command.

The following table lists the command arguments and flags:

::: table-wrap
+----------------------------------+----------------------------------+
| ##### Command name {#CLIfor      | [rt build-clean]{.s1}            |
| JFrogArtifactory-Commandname.18} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | rt bc                            |
| FrogArtifactory-Abbreviation.18} |                                  |
+----------------------------------+----------------------------------+
| #                                | ::: content-wrapper              |
| #### Command options {#CLIforJFr |  The command has no options.     |
| ogArtifactory-Commandoptions.18} | :::                              |
+----------------------------------+----------------------------------+
| #####                            | The command accepts two          |
|  Command arguments {#CLIforJFrog | arguments.                       |
| Artifactory-Commandarguments.18} |                                  |
+----------------------------------+----------------------------------+
| Build name                       | Build name.                      |
+----------------------------------+----------------------------------+
| Build number                     | Build number.                    |
+----------------------------------+----------------------------------+
:::

\

For example, the following command cleans up any build-info collected
for build `my-build-name` with build number 18:

::: table-wrap
  -----------------------------------------------------------
  `jf rt bc my-build-name `{.java .plain}`18`{.java .value}
  -----------------------------------------------------------
:::

### Discarding Old Builds from Artifactory {#CLIforJFrogArtifactory-DiscardingOldBuildsfromArtifactory}

This command is used to discard builds previously published to
Artifactory using the
[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)
command.\
\
The following table lists the command arguments and flags:

::: table-wrap
+----------------------------------+----------------------------------+
| ##### Command name {#CLIfor      | [rt build-discard]{.s1}          |
| JFrogArtifactory-Commandname.19} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | rt bdi                           |
| FrogArtifactory-Abbreviation.19} |                                  |
+----------------------------------+----------------------------------+
| #                                | \                                |
| #### Command options {#CLIforJFr |                                  |
| ogArtifactory-Commandoptions.19} |                                  |
+----------------------------------+----------------------------------+
| \--server-id                     | \[Optional\]                     |
|                                  |                                  |
|                                  | [Sserver ID configured using the |
|                                  | config command. If not           |
|                                  | specified, the default           |
|                                  | configured Artifactory server is |
|                                  | used.]{.s1}                      |
+----------------------------------+----------------------------------+
| \--max-days                      | [\[Optional\]]{.s1}              |
|                                  |                                  |
|                                  | [The maximum number of days to   |
|                                  | keep builds in                   |
|                                  | Artifactory.]{.s1}               |
+----------------------------------+----------------------------------+
| \--max-builds                    | [\[Optional\]]{.s1}              |
|                                  |                                  |
|                                  | [The maximum number of builds to |
|                                  | store in Artifactory.]{.s1}      |
+----------------------------------+----------------------------------+
| \--exclude-builds                | [\[Optional\]]{.s1}              |
|                                  |                                  |
|                                  | [List of build numbers in the    |
|                                  | form of \"value1,value2,\...\",  |
|                                  | that should not be removed from  |
|                                  | Artifactory.]{.s1}               |
+----------------------------------+----------------------------------+
| \--delete-artifacts              | [\[Default: false\]]{.s1}        |
|                                  |                                  |
|                                  | [If set to true, automatically   |
|                                  | removes build artifacts stored   |
|                                  | in Artifactory.]{.s1}            |
+----------------------------------+----------------------------------+
| \--async                         | [\[Default: false\]]{.s1}        |
|                                  |                                  |
|                                  | [If set to true, build discard   |
|                                  | will run asynchronously and will |
|                                  | not wait for response.]{.s1}     |
+----------------------------------+----------------------------------+
| #####                            | The command accepts one          |
|  Command arguments {#CLIforJFrog | argument.                        |
| Artifactory-Commandarguments.19} |                                  |
+----------------------------------+----------------------------------+
| Build name                       | Build name.                      |
+----------------------------------+----------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.8}

**Example 1**

Discard the oldest build numbers of build *my-build-name* from
Artifactory, leaving only the 10 most recent builds.

::: table-wrap
  -------------------------------------------------------------------------
  `jf rt bdi my-build-name --max-builds=`{.java .plain}`10`{.java .value}
  -------------------------------------------------------------------------
:::

**Example 2**

Discard the oldest build numbers of build *my-build-name* from
Artifactory, leaving only builds published during the last 7 days.

::: table-wrap
  ----------------------------------------------------------------------
  `jf rt bdi my-build-name --max-days=`{.java .plain}`7`{.java .value}
  ----------------------------------------------------------------------
:::

**Example 3**

Discard the oldest build numbers of build *my-build-name* from
Artifactory, leaving only builds published during the last 7
days. *b20* and *b21* will not be discarded.

::: table-wrap
  ----------------------------------------------------------------------------------------------------------------------------------
  `jf rt bdi my-build-name --max-days=`{.java .plain}`7`{.java .value} `--exclude-builds=`{.java .plain}`"b20,b21"`{.java .string}
  ----------------------------------------------------------------------------------------------------------------------------------
:::

## Package Managers Integration {#CLIforJFrogArtifactory-PackageManagersIntegration}

### Running Maven Builds {#CLIforJFrogArtifactory-RunningMavenBuilds}

JFrog CLI includes integration with Maven, allowing you to to resolve
dependencies and deploy build artifacts from and to Artifactory, while
collecting build-info and storing it in Artifactory.

#### Setting maven repositories {#CLIforJFrogArtifactory-Settingmavenrepositories}

Before using the *[`mvn`]{style="color: rgb(0,0,0);"}* command, the
project needs to be pre-configured with the Artifactory server and
repositories, to be used for building and publishing the project.
The *[`mvn-config`]{style="color: rgb(0,0,0);"}* command should be used
once to add the configuration to the project. The command should run
while inside the root directory of the project. The configuration is
stored by the command in
the *[`.jfrog`]{style="color: rgb(0,0,0);"}* directory at the root
directory of the project.  

::: table-wrap
+:-------------+:------------------------------------------------------+
| ##### Com    | mvn-config                                            |
| mand-name {# |                                                       |
| CLIforJFrogA |                                                       |
| rtifactory-C |                                                       |
| ommand-name} |                                                       |
+--------------+-------------------------------------------------------+
| ##### Abbrev | mvnc                                                  |
| iation {#CLI |                                                       |
| forJFrogArti |                                                       |
| factory-Abbr |                                                       |
| eviation.20} |                                                       |
+--------------+-------------------------------------------------------+
| #####        | \                                                     |
|  Command opt |                                                       |
| ions {#CLIfo |                                                       |
| rJFrogArtifa |                                                       |
| ctory-Comman |                                                       |
| doptions.20} |                                                       |
+--------------+-------------------------------------------------------+
| \--global    | \[Optional\]                                          |
|              |                                                       |
|              | Set to true, if you\'d like the configuration to be   |
|              | global (for all projects on the machine). Specific    |
|              | projects can override the global configuration.       |
+--------------+-------------------------------------------------------+
| \--serve     | \[Optional\]                                          |
| r-id-resolve |                                                       |
|              | Server ID for resolution. The server should           |
|              | configured using the \'jf rt c\' command.             |
+--------------+-------------------------------------------------------+
| \--serv      | \[Optional\]                                          |
| er-id-deploy |                                                       |
|              | Server ID for deployment. The server should be        |
|              | configured using the \'jf rt c\' command.             |
+--------------+-------------------------------------------------------+
| \--repo-reso | \[Optional\]                                          |
| lve-releases |                                                       |
|              | Resolution repository for release dependencies.       |
+--------------+-------------------------------------------------------+
| \            | \[Optional\]                                          |
| --repo-resol |                                                       |
| ve-snapshots | Resolution repository for snapshot dependencies.      |
+--------------+-------------------------------------------------------+
| \--repo-dep  | \[Optional\]                                          |
| loy-releases |                                                       |
|              | Deployment repository for release artifacts.          |
+--------------+-------------------------------------------------------+
| \--repo-depl | \[Optional\]                                          |
| oy-snapshots |                                                       |
|              | Deployment repository for snapshot artifacts.         |
+--------------+-------------------------------------------------------+
| \--incl      | [\[Optional\] ]{.s1}                                  |
| ude-patterns |                                                       |
|              | [Filter deployed artifacts by setting a wildcard      |
|              | pattern that specifies which artifacts to include.    |
|              | You may provide multiple patterns separated by a      |
|              | comma followed by a white-space. For example]{.s1}    |
|              |                                                       |
|              | [artifact-\*.jar, artifact-\*.pom]{.s1}               |
+--------------+-------------------------------------------------------+
| \--excl      | [\[Optional\] ]{.s1}                                  |
| ude-patterns |                                                       |
|              | [Filter deployed artifacts by setting a wildcard      |
|              | pattern that specifies which artifacts to exclude.    |
|              | You may provide multiple patterns separated by a      |
|              | comma followed by a white-space. For example]{.s1}    |
|              |                                                       |
|              | [artifact-\*-test.jar, artifact-\*-test.pom]{.s1}     |
+--------------+-------------------------------------------------------+
| \--scan      | [\[Default: false\] ]{.s1}                            |
|              |                                                       |
|              | [Set if you\'d like all files to be scanned by Xray   |
|              | on the local file system prior to the upload, and     |
|              | skip the upload if any of the files are found         |
|              | vulnerable.]{.s1}                                     |
+--------------+-------------------------------------------------------+
| \--format    | \[Default: table\]                                    |
|              |                                                       |
|              | Should be used with the \--scan option. Defines the   |
|              | scan output format. Accepts table or json as values.  |
+--------------+-------------------------------------------------------+
| ##### Com    | The command accepts no arguments                      |
| mand argumen |                                                       |
| ts {#CLIforJ |                                                       |
| FrogArtifact |                                                       |
| ory-Commanda |                                                       |
| rguments.20} |                                                       |
+--------------+-------------------------------------------------------+
:::

#### Running maven {#CLIforJFrogArtifactory-Runningmaven}

[The ]{style="color: rgb(0,0,0);"}*[`mvn`]{style="color: rgb(0,0,0);"}*[ command
triggers the maven client, while resolving dependencies and deploying
artifacts from and to Artifactory.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[Before running the ]{style="color: rgb(51,51,51);"}*mvn*[ command on a
project for the first time, the project should be configured with
the ]{style="color: rgb(51,51,51);"}*mvn-config*[ command.]{style="color: rgb(51,51,51);"}
:::
:::

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
If the machine running JFrog CLI has no access to the internet, make
sure to read the [Downloading the Maven and Gradle Extractor
JARs](#CLIforJFrogArtifactory-DownloadingtheMavenandGradleExtractorJARs)
section.
:::
:::

[The following table lists the command arguments and
flags:]{style="letter-spacing: 0.0px;"}

::: table-wrap
+:---------------------------------+:---------------------------------+
| ##### Command-name {#CLIfor      | mvn                              |
| JFrogArtifactory-Command-name.1} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | mvn                              |
| FrogArtifactory-Abbreviation.21} |                                  |
+----------------------------------+----------------------------------+
| #                                | \                                |
| #### Command options {#CLIforJFr |                                  |
| ogArtifactory-Commandoptions.21} |                                  |
+----------------------------------+----------------------------------+
| \--threads                       | [\[Default: 3\] ]{.s1}           |
|                                  |                                  |
|                                  | [Number of threads for uploading |
|                                  | build artifacts.]{.s1}           |
+----------------------------------+----------------------------------+
| \--build-name                    | \[Optional\]                     |
|                                  |                                  |
|                                  | Build name. For more details,    |
|                                  | please refer to [Build           |
|                                  | Integration                      |
|                                  | ](https://www.jfrog.com/confluen |
|                                  | ce/display/CLI/CLI+for+JFrog+Art |
|                                  | ifactory#CLIforJFrogArtifactory- |
|                                  | BuildIntegration){rel="nofollow" |
|                                  | style="text-decoration: none;"}. |
+----------------------------------+----------------------------------+
| \--build-number                  | \[Optional\]                     |
|                                  |                                  |
|                                  | Build number. For more details,  |
|                                  | please refer to [Build           |
|                                  | Integration                      |
|                                  | ](https://www.jfrog.com/confluen |
|                                  | ce/display/CLI/CLI+for+JFrog+Art |
|                                  | ifactory#CLIforJFrogArtifactory- |
|                                  | BuildIntegration){rel="nofollow" |
|                                  | style="text-decoration: none;"}. |
+----------------------------------+----------------------------------+
| \--project                       | \[Optional\]                     |
|                                  |                                  |
|                                  | JFrog project key.               |
+----------------------------------+----------------------------------+
| [\--insecure-tls]{.s1}           | [\[Default: false\] ]{.s1}       |
|                                  |                                  |
|                                  | [Set to true to skip TLS         |
|                                  | certificates verification.]{.s1} |
+----------------------------------+----------------------------------+
| #####                            | The command accepts the same     |
|  Command arguments {#CLIforJFrog | arguments and options as the mvn |
| Artifactory-Commandarguments.21} | client.                          |
+----------------------------------+----------------------------------+
:::

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
Deploying Maven Artifacts

###### The deployment to Artifacts is triggered both by the deploy and install phases. {#CLIforJFrogArtifactory-ThedeploymenttoArtifactsistriggeredbothbythedeployandinstallphases.}

###### To disable artifacts deployment, add ***-Dartifactory.publish.artifacts=false*** to the list of goals and options. {#CLIforJFrogArtifactory-Todisableartifactsdeployment,add-Dartifactory.publish.artifacts=falsetothelistofgoalsandoptions.}

###### For example: \"***clean install** **-Dartifactory.publish.artifacts=false\"*** {#CLIforJFrogArtifactory-Forexample:\"cleaninstall-Dartifactory.publish.artifacts=false\"}
:::
:::

##### [Examples]{style="color: rgb(94,108,132);font-size: 14.0px;letter-spacing: 0.0px;"} {#CLIforJFrogArtifactory-Examples.11}

**Example 1**

Run clean and install with maven.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf mvn clean install -f path/to/pom-file
```
:::
:::

### Running Gradle Builds {#CLIforJFrogArtifactory-RunningGradleBuilds}

JFrog CLI includes integration with Gradle, allowing you to to resolve
dependencies and deploy build artifacts from and to Artifactory, while
collecting build-info and storing it in Artifactory.

#### Setting gradle repositories {#CLIforJFrogArtifactory-Settinggradlerepositories}

Before using the *[`gradle`]{style="color: rgb(0,0,0);"}* command, the
project needs to be pre-configured with the Artifactory server and
repositories, to be used for building and publishing the project. The
*`gradle`**[`-config`]{style="color: rgb(0,0,0);"}* command should be
used once to add the configuration to the project. The command should
run while inside the root directory of the project. The configuration is
stored by the command in
the *[`.jfrog`]{style="color: rgb(0,0,0);"}* directory at the root
directory of the project.  

::: table-wrap
+:------------+:-------------------------------------------------------+
| ####        | gradle-config                                          |
| # Command-n |                                                        |
| ame {#CLIfo |                                                        |
| rJFrogArtif |                                                        |
| actory-Comm |                                                        |
| and-name.2} |                                                        |
+-------------+--------------------------------------------------------+
| #####       | gradlec                                                |
|  Abbreviati |                                                        |
| on {#CLIfor |                                                        |
| JFrogArtifa |                                                        |
| ctory-Abbre |                                                        |
| viation.22} |                                                        |
+-------------+--------------------------------------------------------+
| ##### Comm  | \                                                      |
| and options |                                                        |
|  {#CLIforJF |                                                        |
| rogArtifact |                                                        |
| ory-Command |                                                        |
| options.22} |                                                        |
+-------------+--------------------------------------------------------+
| \--global   | \[Optional\]                                           |
|             |                                                        |
|             | Set to true, if you\'d like the configuration to be    |
|             | global (for all projects on the machine). Specific     |
|             | projects can override the global configuration.        |
+-------------+--------------------------------------------------------+
| \--server   | \[Optional\]                                           |
| -id-resolve |                                                        |
|             | Server ID for resolution. The server should configured |
|             | using the \'jf c add\' command.                        |
+-------------+--------------------------------------------------------+
| \--serve    | \[Optional\]                                           |
| r-id-deploy |                                                        |
|             | Server ID for deployment. The server should be         |
|             | configured using the \'jf c add\' command.             |
+-------------+--------------------------------------------------------+
| \--r        | \[Optional\]                                           |
| epo-resolve |                                                        |
|             | Repository for dependencies resolution.                |
+-------------+--------------------------------------------------------+
| \--         | \[Optional\]                                           |
| repo-deploy |                                                        |
|             | Repository for artifacts deployment.                   |
+-------------+--------------------------------------------------------+
| \--         | \[Default: false\]                                     |
| uses-plugin |                                                        |
|             | Set to true if the Gradle Artifactory Plugin is        |
|             | already applied in the build script.                   |
+-------------+--------------------------------------------------------+
| \--         | \[Default: false\]                                     |
| use-wrapper |                                                        |
|             | Set to true if you\'d like to use the Gradle wrapper.  |
+-------------+--------------------------------------------------------+
| \--deploy   | \[Default: true\]                                      |
| -maven-desc |                                                        |
|             | Set to false if you do not wish to deploy Maven        |
|             | descriptors.                                           |
+-------------+--------------------------------------------------------+
| \--depl     | \[Default: true\]                                      |
| oy-ivy-desc |                                                        |
|             | Set to false if you do not wish to deploy Ivy          |
|             | descriptors.                                           |
+-------------+--------------------------------------------------------+
| \--ivy-d    | \[Default:                                             |
| esc-pattern | \'\[organization\]/\[module\]/ivy-\[revision\].xml\'   |
|             |                                                        |
|             | Set the deployed Ivy descriptor pattern.               |
+-------------+--------------------------------------------------------+
| \-          | \[Default:                                             |
| -ivy-artifa | \'\[organization\]/\[module\]/\[revision\              |
| cts-pattern | ]/\[artifact\]-\[revision\](-\[classifier\]).\[ext\]\' |
|             |                                                        |
|             | Set the deployed Ivy artifacts pattern.                |
+-------------+--------------------------------------------------------+
| \--scan     | [\[Default: false\] ]{.s1}                             |
|             |                                                        |
|             | [Set if you\'d like all files to be scanned by Xray on |
|             | the local file system prior to the upload, and skip    |
|             | the upload if any of the files are found               |
|             | vulnerable.]{.s1}                                      |
+-------------+--------------------------------------------------------+
| \--format   | \[Default: table\]                                     |
|             |                                                        |
|             | Should be used with the \--scan option. Defines the    |
|             | scan output format. Accepts table or json as values.   |
+-------------+--------------------------------------------------------+
| ###         | The command accepts no arguments                       |
| ## Command  |                                                        |
| arguments { |                                                        |
| #CLIforJFro |                                                        |
| gArtifactor |                                                        |
| y-Commandar |                                                        |
| guments.22} |                                                        |
+-------------+--------------------------------------------------------+
:::

#### Running gradle {#CLIforJFrogArtifactory-Runninggradle}

[The
[*gradle*]{style="font-family: SFMono-Medium , SF Mono , Segoe UI Mono , Roboto Mono , Ubuntu Mono , Menlo , Courier , monospace;"}]{style="color: rgb(0,0,0);"}[ command
triggers the gradle client, while resolving dependencies and deploying
artifactds from and to Artifactory.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[[Before running
the ]{style="color: rgb(51,51,51);"}*gradle*]{style="color: rgb(51,51,51);"}[ command
on a project for the first time, the project should be configured with
the ]{style="color: rgb(51,51,51);"}*gradle-config*[ command.]{style="color: rgb(51,51,51);"}
:::
:::

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[If the machine running JFrog CLI has no access to the internet, make
sure to read the ]{style="color: rgb(51,51,51);"}[Downloading the Maven
and Gradle Extractor
JARs](#CLIforJFrogArtifactory-DownloadingtheMavenandGradleExtractorJARs)[ section.]{style="color: rgb(51,51,51);"}
:::
:::

\

The following table lists the command arguments and flags:

::: table-wrap
+:---------------------------------+:---------------------------------+
| ##### Command-name {#CLIfor      | gradle                           |
| JFrogArtifactory-Command-name.3} |                                  |
+----------------------------------+----------------------------------+
| ##### Abbreviation {#CLIforJ     | gradle                           |
| FrogArtifactory-Abbreviation.23} |                                  |
+----------------------------------+----------------------------------+
| #                                | \                                |
| #### Command options {#CLIforJFr |                                  |
| ogArtifactory-Commandoptions.23} |                                  |
+----------------------------------+----------------------------------+
| \--threads                       | [\[Default: 3\] ]{.s1}           |
|                                  |                                  |
|                                  | [Number of threads for uploading |
|                                  | build artifacts.]{.s1}           |
+----------------------------------+----------------------------------+
| \--build-name                    | \[Optional\]                     |
|                                  |                                  |
|                                  | Build name. For more details,    |
|                                  | please refer to [Build           |
|                                  | Integration                      |
|                                  | ](https://www.jfrog.com/confluen |
|                                  | ce/display/CLI/CLI+for+JFrog+Art |
|                                  | ifactory#CLIforJFrogArtifactory- |
|                                  | BuildIntegration){rel="nofollow" |
|                                  | style="text-decoration: none;"}. |
+----------------------------------+----------------------------------+
| \--build-number                  | \[Optional\]                     |
|                                  |                                  |
|                                  | Build number. For more details,  |
|                                  | please refer to [Build           |
|                                  | Integration                      |
|                                  | ](https://www.jfrog.com/confluen |
|                                  | ce/display/CLI/CLI+for+JFrog+Art |
|                                  | ifactory#CLIforJFrogArtifactory- |
|                                  | BuildIntegration){rel="nofollow" |
|                                  | style="text-decoration: none;"}. |
+----------------------------------+----------------------------------+
| \--project                       | \[Optional\]                     |
|                                  |                                  |
|                                  | JFrog project key.               |
+----------------------------------+----------------------------------+
| #####                            | The command accepts the same     |
|  Command arguments {#CLIforJFrog | arguments and options as the     |
| Artifactory-Commandarguments.23} | gradle client.                   |
+----------------------------------+----------------------------------+
:::

##### [Examples]{style="color: rgb(94,108,132);"} {#CLIforJFrogArtifactory-Examples.12}

**Example 1**

Build the project using the *artifactoryPublish* task, while resolving
and deploying artifacts from and to Artifactory.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf gradle clean artifactoryPublish -b path/to/build.gradle
```
:::
:::

###  [Running Builds with MSBuild]{style="color: rgb(0,100,0);font-size: 16.0px;letter-spacing: -0.006em;"} {#CLIforJFrogArtifactory-RunningBuildswithMSBuild}

JFrog CLI includes integration with MSBuild and Artifactory, allowing
you to resolve dependencies and deploy build artifacts from and to
Artifactory, while collecting build-info and storing it in Artifactory.
This is done by having JFrog CLI in your search path and adding JFrog
CLI commands to the MSBuild `csproj` file.

For detailed instructions, please refer to our  [MSBuild Project
Example](https://github.com/eyalbe4/project-examples/tree/master/msbuild-example){.external-link
style="text-decoration:none;"} on GitHub.

### Managing Docker Images {#CLIforJFrogArtifactory-ManagingDockerImages}

JFrog CLI provides full support for pulling and publishing docker images
from and to Artifactory using the docker client running on the same
machine. This allows you to to collect[ build-info for your docker build
and then publish it to Artifactory. You can also promote the pushed
docker images from one repository to another in
Artifactory.]{style="color: rgb(0,0,0);"}

[To build and push your docker images to Artifactory, follow these
steps:]{style="color: rgb(0,0,0);"}

1.  [Make sure Artifactory can be used as docker registry. Please refer
    to [Getting Started with Docker and
    Artifactory](https://www.jfrog.com/confluence/display/RTF/Getting+Started+with+Docker+and+Artifactory){.external-link
    rel="nofollow"} in the JFrog Artifactory User Guide.\
    ]{style="color: rgb(0,0,0);"}

2.  [Make sure that the installed docker client has
    version [**17.07.0-ce (2017-08-29)** or above. To verify
    this, run ***docker
    -v***]{style="color: rgb(34,34,34);"}]{style="color: rgb(0,0,0);"}

3.  [To ensure that the docker client and your Artifactory docker
    registry are correctly configured to work together, run the
    following code snippet.]{style="color: rgb(0,0,0);"}

    ::: {.code .panel .pdl style="border-width: 1px;"}
    ::: {.codeContent .panelContent .pdl}
    ``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
    docker pull hello-world
    docker tag hello-world:latest <artifactoryDockerRegistry>/hello-world:latest
    docker login <artifactoryDockerRegistry>
    docker push <artifactoryDockerRegistry>/hello-world:latest
    ```
    :::
    :::

    [If everything is configured correctly, pushing any image including
    the hello-world image should be successfully uploaded to
    Artifactory.]{style="color: rgb(0,0,0);"}

###### [[ ]{style="color: rgb(0,0,0);"}]{style="color: rgb(0,0,0);"} {#CLIforJFrogArtifactory-.1}

::: {.confluence-information-macro .confluence-information-macro-information}
docker commands with the CLI

[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
When running the docker-pull and docker-push commands, the CLI will
first attempt to login to the docker registry.\
In case of a login failure, the command will not be executed. 
:::
:::

#### Examples {#CLIforJFrogArtifactory-Examples.13}

Check out our [docker project examples on
GitHub](https://github.com/jfrog/project-examples/tree/master/docker-oci-examples){.external-link}.  

#### Pulling Docker Images Using the Docker Client  {#CLIforJFrogArtifactory-PullingDockerImagesUsingtheDockerClient}

Running *[docker-pull ]{style="color: rgb(0,0,0);"}*[command allows
pulling docker images from Artifactory, while collecting the build-info
and storing it locally, so that it can be later published to
Artifactory, using
the ***[build](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)-publish** *command.]{style="color: rgb(0,0,0);"}

[ ]{style="color: rgb(0,0,0);"}The following table lists the command
arguments and flags:

\

::: table-wrap
+--------+-------------------------------------------------------------+
| #####  | docker pull                                                 |
|  Comma |                                                             |
| nd-nam |                                                             |
| e {#CL |                                                             |
| IforJF |                                                             |
| rogArt |                                                             |
| ifacto |                                                             |
| ry-Com |                                                             |
| mand-n |                                                             |
| ame.4} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | dpl                                                         |
| Abbrev |                                                             |
| iation |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Abbr |                                                             |
| eviati |                                                             |
| on.24} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
|  Comma |                                                             |
| nd opt |                                                             |
| ions { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| doptio |                                                             |
| ns.24} |                                                             |
+--------+-------------------------------------------------------------+
| \--ser | \[Optional\]                                                |
| ver-id |                                                             |
|        | [Server ID configured using the config command. If not      |
|        | specified, the default configured Artifactory server is     |
|        | used.]{.s1}                                                 |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integration](ht                                             |
|        | tps://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Ar |
|        | tifactory#CLIforJFrogArtifactory-BuildIntegrationCommands). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| \      | [\[Default: false\] ]{.s1}                                  |
| --skip |                                                             |
| -login | [Set to true if you\'d like the command to skip performing  |
|        | docker login.]{.s1}                                         |
+--------+-------------------------------------------------------------+
| ###    | The same arguments and options supported by the docker      |
| ## Com | client/                                                     |
| mand a |                                                             |
| rgumen |                                                             |
| ts {#C |                                                             |
| LIforJ |                                                             |
| FrogAr |                                                             |
| tifact |                                                             |
| ory-Co |                                                             |
| mmanda |                                                             |
| rgumen |                                                             |
| ts.24} |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.14}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf docker pull my-docker-registry.io/my-docker-image:latest --build-name=my-build-name --build-number=7
```
:::
:::

You can then publish the build-info collected by
the ***docker-pull*** command to Artifactory using
the ***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)*** command.

\

#### Pushing Docker Images Using the Docker Client {#CLIforJFrogArtifactory-PushingDockerImagesUsingtheDockerClient}

[[After building your image using the docker client,
the ]{style="color: rgb(0,0,0);"}*[`docker-push`]{style="color: rgb(0,0,0);"}*[ command pushes
the image layers to Artifactory, while collecting the build-info and
storing it locally, so that it can be later published to Artifactory,
using
the *build-publish *command.]{style="color: rgb(0,0,0);"}]{style="color: rgb(0,0,0);"}

The following table lists the command arguments and flags:

\

::: table-wrap
+--------+-------------------------------------------------------------+
| #####  | docker push                                                 |
|  Comma |                                                             |
| nd-nam |                                                             |
| e {#CL |                                                             |
| IforJF |                                                             |
| rogArt |                                                             |
| ifacto |                                                             |
| ry-Com |                                                             |
| mand-n |                                                             |
| ame.5} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | dp                                                          |
| Abbrev |                                                             |
| iation |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Abbr |                                                             |
| eviati |                                                             |
| on.25} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
|  Comma |                                                             |
| nd opt |                                                             |
| ions { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| doptio |                                                             |
| ns.25} |                                                             |
+--------+-------------------------------------------------------------+
| \--ser | \[Optional\]                                                |
| ver-id |                                                             |
|        | [Server ID configured using the config command. If not      |
|        | specified, the default configured Artifactory server is     |
|        | used.]{.s1}                                                 |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| \      | [\[Default: false\] ]{.s1}                                  |
| --skip |                                                             |
| -login | [Set to true if you\'d like the command to skip performing  |
|        | docker login.]{.s1}                                         |
+--------+-------------------------------------------------------------+
| [\--t  | [\[Default: 3\]]{.s1}                                       |
| hreads |                                                             |
| ]{.s1} | Number of working threads.                                  |
+--------+-------------------------------------------------------------+
| \      | [\[Default: false\] ]{.s1}                                  |
| --deta |                                                             |
| iled-s | [Set true to include a list of the affected files as part   |
| ummary | of the command output summary.]{.s1}                        |
+--------+-------------------------------------------------------------+
| ###    | The same arguments and options supported by the docker      |
| ## Com | client/                                                     |
| mand a |                                                             |
| rgumen |                                                             |
| ts {#C |                                                             |
| LIforJ |                                                             |
| FrogAr |                                                             |
| tifact |                                                             |
| ory-Co |                                                             |
| mmanda |                                                             |
| rgumen |                                                             |
| ts.25} |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.15}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf docker push my-docker-registry.io/my-docker-image:latest --build-name=my-build-name --build-number=7
```
:::
:::

You can then publish the build-info collected by
the ***docker-push*** command to Artifactory using
the ***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)*** command.

\

#### Pulling Docker Images Using Podman {#CLIforJFrogArtifactory-PullingDockerImagesUsingPodman}

[[Podman](https://podman.io/){.external-link} is a daemonless container
engine for developing, managing, and running OCI
Containers. ]{style="color: rgb(0,0,0);"}[Running
the ]{style="letter-spacing: 0.0px;"}*[podman-pull ]{style="color: rgb(0,0,0);"}*[command
allows pulling docker images from Artifactory using podman, while
collecting the build-info and storing it locally, so that it can be
later published to Artifactory, using
the ***[build](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)-publish** *command.]{style="color: rgb(0,0,0);"}

[ ]{style="color: rgb(0,0,0);"}The following table lists the command
arguments and flags:

::: table-wrap
+--------+-------------------------------------------------------------+
| #####  | rt podman-pull                                              |
|  Comma |                                                             |
| nd-nam |                                                             |
| e {#CL |                                                             |
| IforJF |                                                             |
| rogArt |                                                             |
| ifacto |                                                             |
| ry-Com |                                                             |
| mand-n |                                                             |
| ame.6} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | rt ppl                                                      |
| Abbrev |                                                             |
| iation |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Abbr |                                                             |
| eviati |                                                             |
| on.26} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
|  Comma |                                                             |
| nd opt |                                                             |
| ions { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| doptio |                                                             |
| ns.26} |                                                             |
+--------+-------------------------------------------------------------+
| \--ser | \[Optional\]                                                |
| ver-id |                                                             |
|        | [Server ID configured using the config command. If not      |
|        | specified, the default configured Artifactory server is     |
|        | used.]{.s1}                                                 |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integration](ht                                             |
|        | tps://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Ar |
|        | tifactory#CLIforJFrogArtifactory-BuildIntegrationCommands). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| \      | [\[Default: false\] ]{.s1}                                  |
| --skip |                                                             |
| -login | [Set to true if you\'d like the command to skip performing  |
|        | docker login.]{.s1}                                         |
+--------+-------------------------------------------------------------+
| ####   | \                                                           |
| # Comm |                                                             |
| and ar |                                                             |
| gument |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Comm |                                                             |
| andarg |                                                             |
| ument} |                                                             |
+--------+-------------------------------------------------------------+
| Image  | [The docker image tag to pull.]{.s1}                        |
| tag    |                                                             |
+--------+-------------------------------------------------------------+
| Source | [Source repository in Artifactory.]{.s1}                    |
| repo   |                                                             |
| sitory |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.16}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt podman-pull my-docker-registry.io/my-docker-image:latest docker-local --build-name=my-build-name --build-number=7
```
:::
:::

You can then publish the build-info collected by
the ***podman-pull*** command to Artifactory using
the ***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)*** command.

\

#### Pushing Docker Images Using Podman {#CLIforJFrogArtifactory-PushingDockerImagesUsingPodman}

[[Podman](https://podman.io/){.external-link} is a daemonless container
engine for developing, managing, and running OCI Containers. After
building your image, the podman*`-push`* command pushes the image layers
to Artifactory, while collecting the build-info and storing it locally,
so that it can be later published to Artifactory, using
the *build-publish *command.]{style="color: rgb(0,0,0);"}

The following table lists the command arguments and flags:

\

::: table-wrap
+--------+-------------------------------------------------------------+
| #####  | rt podman-push                                              |
|  Comma |                                                             |
| nd-nam |                                                             |
| e {#CL |                                                             |
| IforJF |                                                             |
| rogArt |                                                             |
| ifacto |                                                             |
| ry-Com |                                                             |
| mand-n |                                                             |
| ame.7} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | rt pp                                                       |
| Abbrev |                                                             |
| iation |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Abbr |                                                             |
| eviati |                                                             |
| on.27} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
|  Comma |                                                             |
| nd opt |                                                             |
| ions { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| doptio |                                                             |
| ns.27} |                                                             |
+--------+-------------------------------------------------------------+
| \--ser | \[Optional\]                                                |
| ver-id |                                                             |
|        | [Server ID configured using the config command. If not      |
|        | specified, the default configured Artifactory server is     |
|        | used.]{.s1}                                                 |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| \      | [\[Default: false\] ]{.s1}                                  |
| --skip |                                                             |
| -login | [Set to true if you\'d like the command to skip performing  |
|        | docker login.]{.s1}                                         |
+--------+-------------------------------------------------------------+
| [\--t  | [\[Default: 3\]]{.s1}                                       |
| hreads |                                                             |
| ]{.s1} | Number of working threads.                                  |
+--------+-------------------------------------------------------------+
| \      | [\[Default: false\] ]{.s1}                                  |
| --deta |                                                             |
| iled-s | [Set to true to include a list of the affected files as     |
| ummary | part of the command output summary.]{.s1}                   |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
| Comman |                                                             |
| d argu |                                                             |
| ment { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| dargum |                                                             |
| ent.1} |                                                             |
+--------+-------------------------------------------------------------+
| Image  | [The docker image tag to push.]{.s1}                        |
| tag    |                                                             |
+--------+-------------------------------------------------------------+
| Target | [Target repository in Artifactory.]{.s1}                    |
| repo   |                                                             |
| sitory |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.17}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt podman-push my-docker-registry.io/my-docker-image:latest docker-local --build-name=my-build-name --build-number=7
```
:::
:::

You can then publish the build-info collected by
the ***podman-push*** command to Artifactory using
the ***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)*** command.

\

#### Pushing Docker Images Using Kaniko {#CLIforJFrogArtifactory-PushingDockerImagesUsingKaniko}

JFrog CLI allows pushing containers to Artifactory using
[Kaniko](https://github.com/GoogleContainerTools/kaniko#kaniko---build-images-in-kubernetes){.external-link},
while collecting build-info and storing it in Artifactory.\
For detailed instructions, please refer to our [Kaniko project example
on
GitHub](https://github.com/jfrog/project-examples/tree/master/docker-oci-examples/kaniko-example){.external-link}.

\

#### Pushing Docker Images Using the OpenShift CLI {#CLIforJFrogArtifactory-PushingDockerImagesUsingtheOpenShiftCLI}

JFrog CLI allows pushing containers to Artifactory using the [OpenShift
CLI](https://docs.openshift.com/container-platform/4.2/cli_reference/openshift_cli/getting-started-cli.html){.external-link
style="text-decoration: none;"}, while collecting build-info and storing
it in Artifactory.\
For detailed instructions, please refer to our [OpenShift build project
example on
GitHub](https://github.com/jfrog/project-examples/tree/master/docker-oci-examples/openshift-examples/openshift-build-example){.external-link}.

\

#### Adding Published Docker Images to the Build-Info {#CLIforJFrogArtifactory-AddingPublishedDockerImagestotheBuild-Info}

[The *build-docker-create* command allows adding a docker image, which
is already published to Artifactory, into the build-info. This
build-info ]{style="color: rgb(0,0,0);"}[can be later published to
Artifactory, using
the ]{style="color: rgb(0,0,0);letter-spacing: 0.0px;"}*build-publish *[command.]{style="color: rgb(0,0,0);letter-spacing: 0.0px;"}

\

::: table-wrap
+--------+-------------------------------------------------------------+
| #####  | rt build-docker-create                                      |
|  Comma |                                                             |
| nd-nam |                                                             |
| e {#CL |                                                             |
| IforJF |                                                             |
| rogArt |                                                             |
| ifacto |                                                             |
| ry-Com |                                                             |
| mand-n |                                                             |
| ame.8} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | rt bdc                                                      |
| Abbrev |                                                             |
| iation |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Abbr |                                                             |
| eviati |                                                             |
| on.28} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
|  Comma |                                                             |
| nd opt |                                                             |
| ions { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| doptio |                                                             |
| ns.28} |                                                             |
+--------+-------------------------------------------------------------+
| \      | ::: content-wrapper                                         |
| --imag | Path to a file which includes one line in the following     |
| e-file | format: IMAGE-TAG@sha256:MANIFEST-SHA256. For example:      |
|        |                                                             |
|        | ::: {.code .panel .pdl style="border-width: 1px;"}          |
|        | ::: {.codeContent .panelContent .pdl}                       |
|        | ``                                                          |
|        | ` {.syntaxhighlighter-pre syntaxhighlighter-params="brush:  |
|        | java; gutter: false; theme: Confluence" theme="Confluence"} |
|        | cat image-file-details                                      |
|        | superfrog-docke                                             |
|        | r.jfrog.io/hello-frog@sha256:30f04e684493fb5ccc030969df6de0 |
|        | ```                                                         |
|        | :::                                                         |
|        | :::                                                         |
|        | :::                                                         |
+--------+-------------------------------------------------------------+
| \--ser | \[Optional\]                                                |
| ver-id |                                                             |
|        | [Server ID configured using the config command. If not      |
|        | specified, the default configured Artifactory server is     |
|        | used.]{.s1}                                                 |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| \      | [\[Default: false\] ]{.s1}                                  |
| --skip |                                                             |
| -login | [Set to true if you\'d like the command to skip performing  |
|        | docker login.]{.s1}                                         |
+--------+-------------------------------------------------------------+
| [\--t  | [\[Default: 3\]]{.s1}                                       |
| hreads |                                                             |
| ]{.s1} | Number of working threads.                                  |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
| Comman |                                                             |
| d argu |                                                             |
| ment { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| dargum |                                                             |
| ent.2} |                                                             |
+--------+-------------------------------------------------------------+
| Target | [The name of the repository to which the image was          |
| repo   | pushed.]{.s1}                                               |
| sitory |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.18}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt bdc docker-local --image-file image-file-details --build-name myBuild --build-number 1
```
:::
:::

You can then publish the build-info collected by
the ***podman-push*** command to Artifactory using
the ***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)*** command.

\

#### Promoting Docker Images {#CLIforJFrogArtifactory-PromotingDockerImages}

Promotion is the action of moving or copying a group of artifacts from
one repository to another, to support the artifacts lifecycle. When it
comes to docker images, there are two ways to ways to promote a docker
image which was pushed to Artifactory:

1.  Create build-info for the docker image, and then promote the build
    using the ***jf rt build-promote*** command.
2.  Use the ***jf rt docker-promote*** command as described below.

The following table lists the command arguments and flags:

::: table-wrap
+------------+---------------------------------------------------------+
| ##### Com  | rt docker-promote                                       |
| mand-name  |                                                         |
| {#CLIforJF |                                                         |
| rogArtifac |                                                         |
| tory-Comma |                                                         |
| nd-name.9} |                                                         |
+------------+---------------------------------------------------------+
| ##### Abbr | rt dpr                                                  |
| eviation { |                                                         |
| #CLIforJFr |                                                         |
| ogArtifact |                                                         |
| ory-Abbrev |                                                         |
| iation.29} |                                                         |
+------------+---------------------------------------------------------+
| #####      | \                                                       |
|  Command o |                                                         |
| ptions {#C |                                                         |
| LIforJFrog |                                                         |
| Artifactor |                                                         |
| y-Commando |                                                         |
| ptions.29} |                                                         |
+------------+---------------------------------------------------------+
| \-         | \[Optional\]                                            |
| -server-id |                                                         |
|            | [Server ID configured using the config command. If not  |
|            | specified, the default configured Artifactory server is |
|            | used.]{.s1}                                             |
+------------+---------------------------------------------------------+
| [\--       | [\[Default: false\] ]{.s1}                              |
| copy]{.s1} |                                                         |
|            | [If set true, the Docker image is copied to the target  |
|            | repository, otherwise it is moved.]{.s1}                |
+------------+---------------------------------------------------------+
| [\--source | [\[Optional\]]{style="letter-spacing: 0.0px;"}          |
| -tag]{.s1} |                                                         |
|            | [The tag name to promote.]{.s1}                         |
+------------+---------------------------------------------------------+
| [\--targe  | [\[Optional\] ]{.s1}                                    |
| t-docker-i |                                                         |
| mage]{.s1} | [Docker target image name.]{.s1}                        |
+------------+---------------------------------------------------------+
| [\--       | [\[Optional\] ]{.s1}                                    |
| target-tag |                                                         |
| ]{.s1}     | [The target tag to assign the image after               |
|            | promotion.]{.s1}                                        |
+------------+---------------------------------------------------------+
| #####      | \                                                       |
| Command ar |                                                         |
| gument {#C |                                                         |
| LIforJFrog |                                                         |
| Artifactor |                                                         |
| y-Commanda |                                                         |
| rgument.3} |                                                         |
+------------+---------------------------------------------------------+
| [source    | [The docker image name to promote.]{.s1}                |
| docker     |                                                         |
| i          |                                                         |
| mage]{.s1} |                                                         |
+------------+---------------------------------------------------------+
| source     | [Source repository in Artifactory.]{.s1}                |
| repository |                                                         |
+------------+---------------------------------------------------------+
| target     | [Target repository in Artifactory.]{.s1}                |
| repository |                                                         |
+------------+---------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.19}

Promote the *hello-world* docker image from the *docker-dev-local*
repository to the *docker-staging-local* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt docker-promote hello-world docker-dev-local docker-staging-local
```
:::
:::

\

### Building Npm Packages Using the Npm Client {#CLIforJFrogArtifactory-BuildingNpmPackagesUsingtheNpmClient}

JFrog CLI provides full support for building npm packages using the npm
client. This allows you to resolve npm dependencies,[ and publish your
npm packages from and to Artifactory, while collecting build-info and
storing it in Artifactory. ]{style="color: rgb(0,0,0);"}

[ ]{style="color: rgb(0,0,0);"}[Follow these guidelines when
building ]{style="color: rgb(0,0,0);"}npm[ packages:]{style="color: rgb(0,0,0);"}

-   You can download npm packages from any npm repository type - local,
    remote or virtual, but you can only publish to a local or virtual
    Artifactory repository, containing local repositories. To publish to
    a virtual repository, you first need to set a default local
    repository. For more details, please refer to [ [Deploying to a
    Virtual
    Repository](https://www.jfrog.com/confluence/display/RTF/Virtual+Repositories#VirtualRepositories-DeployingtoaVirtualRepository){style="text-decoration:none;"}]{style="color: rgb(0,0,0);"}.

```{=html}
<!-- -->
```
-   When the *`npm-publish `*command runs, JFrog CLI
    runs the *`pack`* command in the background. The pack action is
    followed by an upload, which is not based on the npm  client\'s
    publish command. Therefore, [If your npm package includes
    the ]{style="letter-spacing: 0.0px;"}*`prepublish `{style="letter-spacing: 0.0px;"}*[or ]{style="letter-spacing: 0.0px;"}*`postpublish`{style="letter-spacing: 0.0px;"}*[ scripts,
    rename them
    to ]{style="letter-spacing: 0.0px;"}*`prepack`{style="letter-spacing: 0.0px;"}*[ and
    ]{style="letter-spacing: 0.0px;"}[*postpack*]{style="letter-spacing: 0.0px;font-family: SFMono-Medium , SF Mono , Segoe UI Mono , Roboto Mono , Ubuntu Mono , Menlo , Courier , monospace;"}[,
    respectively.]{style="letter-spacing: 0.0px;"}

##### Requirements {#CLIforJFrogArtifactory-Requirements.1}

[Npm client version 5.4.0 and above.]{style="color: rgb(0,0,0);"}

[Artifactory version 5.5.2 and above.]{style="color: rgb(0,0,0);"}

#### Setting npm repositories {#CLIforJFrogArtifactory-Settingnpmrepositories}

Before using the *[`npm-install`]{style="color: rgb(0,0,0);"}*,
*[`npm-ci `]{style="color: rgb(0,0,0);"}*and *[`npm-publish`]{style="color: rgb(0,0,0);"}*
commands, the project needs to be pre-configured with the Artifactory
server and repositories, to be used for building and publishing the
project. The *[`npm-config`]{style="color: rgb(0,0,0);"}* command should
be used once to add the configuration to the project. The command should
run while inside the root directory of the project. The configuration is
stored by the command in
the *[`.jfrog`]{style="color: rgb(0,0,0);"}* directory at the root
directory of the project.  

::: table-wrap
+---------+------------------------------------------------------------+
| ####    | npm-config                                                 |
| # Comma |                                                            |
| nd-name |                                                            |
|  {#CLIf |                                                            |
| orJFrog |                                                            |
| Artifac |                                                            |
| tory-Co |                                                            |
| mmand-n |                                                            |
| ame.10} |                                                            |
+---------+------------------------------------------------------------+
| ####    | npmc                                                       |
| # Abbre |                                                            |
| viation |                                                            |
|  {#CLIf |                                                            |
| orJFrog |                                                            |
| Artifac |                                                            |
| tory-Ab |                                                            |
| breviat |                                                            |
| ion.30} |                                                            |
+---------+------------------------------------------------------------+
| ##      | \                                                          |
| ### Com |                                                            |
| mand op |                                                            |
| tions { |                                                            |
| #CLIfor |                                                            |
| JFrogAr |                                                            |
| tifacto |                                                            |
| ry-Comm |                                                            |
| andopti |                                                            |
| ons.30} |                                                            |
+---------+------------------------------------------------------------+
| \-      | \[Optional\]                                               |
| -global |                                                            |
|         | Set to true, if you\'d like the configuration to be global |
|         | (for all projects on the machine). Specific projects can   |
|         | override the global configuration.                         |
+---------+------------------------------------------------------------+
| \--ser  | \[Optional\]                                               |
| ver-id- |                                                            |
| resolve | Artifactory server ID for resolution. The server should    |
|         | configured using the \'jfrog c add\' command.              |
+---------+------------------------------------------------------------+
| \--se   | \[Optional\]                                               |
| rver-id |                                                            |
| -deploy | Artifactory server ID for deployment. The server should be |
|         | configured using the \'jfrog c add\' command.              |
+---------+------------------------------------------------------------+
| \       | \[Optional\]                                               |
| --repo- |                                                            |
| resolve | Repository for dependencies resolution.                    |
+---------+------------------------------------------------------------+
| \--repo | \[Optional\]                                               |
| -deploy |                                                            |
|         | Repository for artifacts deployment.                       |
+---------+------------------------------------------------------------+
| #####   | The command accepts no arguments                           |
| Command |                                                            |
|  argume |                                                            |
| nts {#C |                                                            |
| LIforJF |                                                            |
| rogArti |                                                            |
| factory |                                                            |
| -Comman |                                                            |
| dargume |                                                            |
| nts.26} |                                                            |
+---------+------------------------------------------------------------+
:::

#### Installing Npm Packages {#CLIforJFrogArtifactory-InstallingNpmPackages}

[The ]{style="color: rgb(0,0,0);"}*[`npm-install`]{style="color: rgb(0,0,0);"}*[ and *`npm-ci`*
commands execute npm\'s *`install`* and *`ci`* commands respectively, to
fetches the npm dependencies from the npm
repositories.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
Before running the *npm-install* or *npm-ci* command on a project for
the first time, the project should be configured using the *npm-config*
command.
:::
:::

[The following table lists the command arguments and
flags:]{style="letter-spacing: 0.0px;"}

::: table-wrap
+--------+-------------------------------------------------------------+
| #####  | npm                                                         |
| Comman |                                                             |
| d-name |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Comm |                                                             |
| and-na |                                                             |
| me.11} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
| Abbrev |                                                             |
| iation |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Abbr |                                                             |
| eviati |                                                             |
| on.31} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
|  Comma |                                                             |
| nd opt |                                                             |
| ions { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| doptio |                                                             |
| ns.31} |                                                             |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| \--t   | [\[Default: 3\] ]{.s1}                                      |
| hreads |                                                             |
|        | [Number of working threads for build-info collection.]{.s1} |
+--------+-------------------------------------------------------------+
| ###    | The command accepts the same arguments and options as the   |
| ## Com | npm client.                                                 |
| mand a |                                                             |
| rgumen |                                                             |
| ts {#C |                                                             |
| LIforJ |                                                             |
| FrogAr |                                                             |
| tifact |                                                             |
| ory-Co |                                                             |
| mmanda |                                                             |
| rgumen |                                                             |
| ts.27} |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.20}

##### Example 1 {#CLIforJFrogArtifactory-Example1.10}

[The following example installs the dependencies and records them
locally as part of build *my-build-name/1*. The build-info can later be
published to Artifactory using
the ***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)*** command. The
dependencies are resolved from the Artifactory server and repository
configured by *npm-config* command. ]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf npm install --build-name=my-build-name --build-number=1
```
:::
:::

[ ]{style="color: rgb(0,0,0);"}

##### Example 2 {#CLIforJFrogArtifactory-Example2.10}

[The following example installs the dependencies. The dependencies are
resolved from the Artifactory server and repository configured by
*npm-config* command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf npm install
```
:::
:::

[ ]{style="color: rgb(0,0,0);"}

##### Example 3 {#CLIforJFrogArtifactory-Example3.5}

[The following example installs the dependencies using the npm-ci
command. The dependencies are resolved from the Artifactory server and
repository configured by *npm-config*
command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf npm ci
```
:::
:::

\

#### Publishing the Npm Packages into Artifactory {#CLIforJFrogArtifactory-PublishingtheNpmPackagesintoArtifactory}

[The ]{style="color: rgb(0,0,0);"}*[`npm-publish`]{style="color: rgb(0,0,0);"}*[ command packs
and deploys the npm package to the designated npm
repository.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
Before running the npm-publish command on a project for the first time,
the project should be configured using the *npm-config* command. This
configuration includes the Artifactory server and repository to which
the package should deployed.
:::
:::

::: {.confluence-information-macro .confluence-information-macro-note}
[]{.aui-icon .aui-icon-small .aui-iconfont-warning
.confluence-information-macro-icon}

::: confluence-information-macro-body
 If your npm package includes
the *`prepublish `*or *`postpublish`* scripts, please refer to the
guidelines above.
:::
:::

The following table lists the command arguments and flags: 

::: table-wrap
+----------+-----------------------------------------------------------+
| ####     | npm publish                                               |
| # Comman |                                                           |
| d-name { |                                                           |
| #CLIforJ |                                                           |
| FrogArti |                                                           |
| factory- |                                                           |
| Command- |                                                           |
| name.12} |                                                           |
+----------+-----------------------------------------------------------+
| ####     | \                                                         |
| # Abbrev |                                                           |
| iation { |                                                           |
| #CLIforJ |                                                           |
| FrogArti |                                                           |
| factory- |                                                           |
| Abbrevia |                                                           |
| tion.32} |                                                           |
+----------+-----------------------------------------------------------+
| #        | \                                                         |
| #### Com |                                                           |
| mand opt |                                                           |
| ions {#C |                                                           |
| LIforJFr |                                                           |
| ogArtifa |                                                           |
| ctory-Co |                                                           |
| mmandopt |                                                           |
| ions.32} |                                                           |
+----------+-----------------------------------------------------------+
| \--bu    | \[Optional\]                                              |
| ild-name |                                                           |
|          | Build name. For more details, please refer to [Build      |
|          | Integration                                               |
|          | ](https://www.jfrog.com/confluence/display/CLI/CLI+for+JF |
|          | rog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+----------+-----------------------------------------------------------+
| \--buil  | \[Optional\]                                              |
| d-number |                                                           |
|          | Build number. For more details, please refer to [Build    |
|          | Integration                                               |
|          | ](https://www.jfrog.com/confluence/display/CLI/CLI+for+JF |
|          | rog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+----------+-----------------------------------------------------------+
| \-       | \[Optional\]                                              |
| -project |                                                           |
|          | JFrog project key.                                        |
+----------+-----------------------------------------------------------+
| \        | \[Optional\]                                              |
| --module |                                                           |
|          | [Optional module name for the build-info.]{.s1}           |
+----------+-----------------------------------------------------------+
| \--      | [\[Default: false\] ]{.s1}                                |
| detailed |                                                           |
| -summary | [Set true to include a list of the affected files as part |
|          | of the command output summary.]{.s1}                      |
+----------+-----------------------------------------------------------+
| \--scan  | [\[Default: false\] ]{.s1}                                |
|          |                                                           |
|          | [Set if you\'d like all files to be scanned by Xray on    |
|          | the local file system prior to the upload, and skip the   |
|          | upload if any of the files are found vulnerable.]{.s1}    |
+----------+-----------------------------------------------------------+
| \        | \[Default: table\]                                        |
| --format |                                                           |
|          | Should be used with the \--scan option. Defines the scan  |
|          | output format. Accepts table or json as values.           |
+----------+-----------------------------------------------------------+
| ##       | The command accepts the same arguments and options that   |
| ### Comm | the ***npm pack*** command expects.                       |
| and argu |                                                           |
| ment {#C |                                                           |
| LIforJFr |                                                           |
| ogArtifa |                                                           |
| ctory-Co |                                                           |
| mmandarg |                                                           |
| ument.4} |                                                           |
+----------+-----------------------------------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.9}

[To pack and publish the npm package and also record it locally as part
of build *my-build-name/1*, run the following
command. ]{style="color: rgb(0,0,0);"}[The build-info can later be
published to Artifactory using
the ]{style="color: rgb(0,0,0);"}***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)***[ command. The
package is published to the Artifactory server and repository configured
by *npm-config* command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf npm publish --build-name=my-build-name --build-number=1
```
:::
:::

### Building Npm Packages Using the Yarn Client {#CLIforJFrogArtifactory-BuildingNpmPackagesUsingtheYarnClient}

[JFrog CLI provides full support for building npm packages using the
yarn client. This allows you to resolve npm
dependencies,]{style="color: rgb(23,43,77);"}[ while collecting
build-info and storing it in Artifactory. You can download npm packages
from any npm repository type - local, remote or virtual. Publishing the
packages to a local npm repository is supported through the *jf rt
upload* command.]{style="color: rgb(0,0,0);"}

[Yarn version 2.4.0 and above is supported.]{style="color: rgb(0,0,0);"}

#### Setting npm repositories {#CLIforJFrogArtifactory-Settingnpmrepositories.1}

Before using the [*jfrog
yarn*]{style="color: rgb(0,0,0);font-family: SFMono-Medium , SF Mono , Segoe UI Mono , Roboto Mono , Ubuntu Mono , Menlo , Courier , monospace;"} command,
the project needs to be pre-configured with the Artifactory server and
repositories, to be used for building the project.
The *[`yarn-config`]{style="color: rgb(0,0,0);"}* command should be used
once to add the configuration to the project. The command should run
while inside the root directory of the project. The configuration is
stored by the command in
the *[`.jfrog`]{style="color: rgb(0,0,0);"}* directory at the root
directory of the project.  

::: table-wrap
+:---------------+:----------------------------------------------------+
| ####           | yarn-config                                         |
| # Command-name |                                                     |
|  {#CLIforJFrog |                                                     |
| Artifactory-Co |                                                     |
| mmand-name.13} |                                                     |
+----------------+-----------------------------------------------------+
| ####           | yarnc                                               |
| # Abbreviation |                                                     |
|  {#CLIforJFrog |                                                     |
| Artifactory-Ab |                                                     |
| breviation.33} |                                                     |
+----------------+-----------------------------------------------------+
| ##### Com      | \                                                   |
| mand options { |                                                     |
| #CLIforJFrogAr |                                                     |
| tifactory-Comm |                                                     |
| andoptions.33} |                                                     |
+----------------+-----------------------------------------------------+
| \--global      | \[Optional\]                                        |
|                |                                                     |
|                | Set to true, if you\'d like the configuration to be |
|                | global (for all projects on the machine). Specific  |
|                | projects can override the global configuration.     |
+----------------+-----------------------------------------------------+
| \--ser         | \[Optional\]                                        |
| ver-id-resolve |                                                     |
|                | Artifactory server ID for resolution. The server    |
|                | should configured using the \'jf c add\' command.   |
+----------------+-----------------------------------------------------+
| \              | \[Optional\]                                        |
| --repo-resolve |                                                     |
|                | Repository for dependencies resolution.             |
+----------------+-----------------------------------------------------+
| ##### Command  | The command accepts no arguments                    |
|  arguments {#C |                                                     |
| LIforJFrogArti |                                                     |
| factory-Comman |                                                     |
| darguments.28} |                                                     |
+----------------+-----------------------------------------------------+
:::

#### Installing Npm Packages {#CLIforJFrogArtifactory-InstallingNpmPackages.1}

[The [*jf
yarn*]{style="font-family: SFMono-Medium , SF Mono , Segoe UI Mono , Roboto Mono , Ubuntu Mono , Menlo , Courier , monospace;"}]{style="color: rgb(0,0,0);"}[ commands
execute the yarn client, to fetches the npm dependencies from the npm
repositories.]{style="color: rgb(0,0,0);"}

Before running the command on a project for the first time, the project
should be configured using the *yarn-config* command.

The following table lists the command arguments and flags:

::: table-wrap
+:---------------------------------+:---------------------------------+
| ##### Command-name {#CLIforJ     | yarn                             |
| FrogArtifactory-Command-name.14} |                                  |
+----------------------------------+----------------------------------+
| #                                | \                                |
| #### Command options {#CLIforJFr |                                  |
| ogArtifactory-Commandoptions.34} |                                  |
+----------------------------------+----------------------------------+
| \--build-name                    | \[Optional\]                     |
|                                  |                                  |
|                                  | Build name. For more details,    |
|                                  | please refer to [Build           |
|                                  | Integration](https://www.jfro    |
|                                  | g.com/confluence/display/CLI/CLI |
|                                  | +for+JFrog+Artifactory#CLIforJFr |
|                                  | ogArtifactory-BuildIntegration){ |
|                                  | style="text-decoration: none;"}. |
+----------------------------------+----------------------------------+
| \--build-number                  | \[Optional\]                     |
|                                  |                                  |
|                                  | Build number. For more details,  |
|                                  | please refer to [Build           |
|                                  | Integration](https://www.jfro    |
|                                  | g.com/confluence/display/CLI/CLI |
|                                  | +for+JFrog+Artifactory#CLIforJFr |
|                                  | ogArtifactory-BuildIntegration){ |
|                                  | style="text-decoration: none;"}. |
+----------------------------------+----------------------------------+
| \--project                       | \[Optional\]                     |
|                                  |                                  |
|                                  | JFrog project key.               |
+----------------------------------+----------------------------------+
| \--module                        | \[Optional\]                     |
|                                  |                                  |
|                                  | [Optional module name for the    |
|                                  | build-info.]{.s1}                |
+----------------------------------+----------------------------------+
| \--threads                       | [\[Default: 3\]]{.s1}            |
|                                  |                                  |
|                                  | [Number of working threads for   |
|                                  | build-info collection.]{.s1}     |
+----------------------------------+----------------------------------+
| #####                            | The command accepts the same     |
|  Command arguments {#CLIforJFrog | arguments and options as the     |
| Artifactory-Commandarguments.29} | yarn client.                     |
+----------------------------------+----------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.21}

##### Example 1 {#CLIforJFrogArtifactory-Example1.11}

[The following example installs the dependencies and records them
locally as part of build *my-build-name/1*. The build-info can later be
published to Artifactory using
the ***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation){style="text-decoration: none;"}*** command. The
dependencies are resolved from the Artifactory server and repository
configured by *yarn-config* command. ]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf yarn install --build-name=my-build-name --build-number=1
```
:::
:::

\

[Example
2]{style="color: rgb(94,108,132);font-weight: 600;letter-spacing: 0.0px;"}

[The following example installs the dependencies. The dependencies are
resolved from the Artifactory server and repository configured
by *yarn-config* command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf yarn install
```
:::
:::

\

### [Building Go Packages]{style="font-size: 16.0px;letter-spacing: -0.006em;"} {#CLIforJFrogArtifactory-BuildingGoPackages}

#### General {#CLIforJFrogArtifactory-General}

JFrog CLI provides full support for building Go packages using the Go
client. This allows resolving Go dependencies[ from and publish your Go
packages to Artifactory, while collecting build-info and storing it in
Artifactory. ]{style="color: rgb(0,0,0);"}

#### Requirements {#CLIforJFrogArtifactory-Requirements.2}

JFrog CLI client version 1.20.0 and above.

[Artifactory version 6.1.0 and above.]{style="color: rgb(0,0,0);"}

[Go client version 1.11.0 and above.]{style="color: rgb(0,0,0);"}

#### Example project {#CLIforJFrogArtifactory-Exampleproject}

To help you get started, you can use [this sample project on
GitHub](https://github.com/jfrog/project-examples/tree/master/golang-example){.external-link}.

#### Setting Go repositories {#CLIforJFrogArtifactory-SettingGorepositories}

Before you can use JFrog CLI to build your Go projects with Artifactory,
you first need to set the resolutions and deployment repositories for
the project.

Here\'s how you set the repositories.

1.  CD to the root of the Go project.
2.  Run the **jf rt go-config** command.

::: table-wrap
+----------+-----------------------------------------------------------+
| ####     | go-config                                                 |
| # Comman |                                                           |
| d-name { |                                                           |
| #CLIforJ |                                                           |
| FrogArti |                                                           |
| factory- |                                                           |
| Command- |                                                           |
| name.15} |                                                           |
+----------+-----------------------------------------------------------+
| ####     | \                                                         |
| # Abbrev |                                                           |
| iation { |                                                           |
| #CLIforJ |                                                           |
| FrogArti |                                                           |
| factory- |                                                           |
| Abbrevia |                                                           |
| tion.34} |                                                           |
+----------+-----------------------------------------------------------+
| #        | \                                                         |
| #### Com |                                                           |
| mand opt |                                                           |
| ions {#C |                                                           |
| LIforJFr |                                                           |
| ogArtifa |                                                           |
| ctory-Co |                                                           |
| mmandopt |                                                           |
| ions.35} |                                                           |
+----------+-----------------------------------------------------------+
| \        | \[Default false\]                                         |
| --global |                                                           |
|          | Set to true, if you\'d like the configuration to be       |
|          | global (for all projects on the machine). Specific        |
|          | projects can override the global configuration.           |
+----------+-----------------------------------------------------------+
| \--s     | \[Optional\]                                              |
| erver-id |                                                           |
| -resolve | Artifactory server ID for resolution. The server should   |
|          | configured using the \'jf c add\' command.                |
+----------+-----------------------------------------------------------+
| \--      | \[Optional\]                                              |
| server-i |                                                           |
| d-deploy | Artifactory server ID for deployment. The server should   |
|          | be configured using the \'jf c add\' command.             |
+----------+-----------------------------------------------------------+
| \--repo  | \[Optional\]                                              |
| -resolve |                                                           |
|          | Repository for dependencies resolution.                   |
+----------+-----------------------------------------------------------+
| \--rep   | \[Optional\]                                              |
| o-deploy |                                                           |
|          | Repository for artifacts deployment.                      |
+----------+-----------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.22}

##### Example 1 {#CLIforJFrogArtifactory-Example1.12}

Set repositories for for this go project.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf go-config
```
:::
:::

##### Example 2 {#CLIforJFrogArtifactory-Example2.11}

Set repositories for for all go projects on this machine.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf go-config --global
```
:::
:::

\

#### Running Go commands {#CLIforJFrogArtifactory-RunningGocommands}

[The ]{style="color: rgb(0,0,0);"}*[`go`]{style="color: rgb(0,0,0);"}*[ command
triggers the go client.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[Before running the *go*]{style="color: rgb(51,51,51);"}[ command on a
project for the first time, the project should be configured using
the ]{style="color: rgb(51,51,51);"}*go-config*[ command.]{style="color: rgb(51,51,51);"}
:::
:::

The following table lists the command arguments and flags:

\

::: table-wrap
+----------+-----------------------------------------------------------+
| ####     | go                                                        |
| # Comman |                                                           |
| d-name { |                                                           |
| #CLIforJ |                                                           |
| FrogArti |                                                           |
| factory- |                                                           |
| Command- |                                                           |
| name.16} |                                                           |
+----------+-----------------------------------------------------------+
| ####     | go                                                        |
| # Abbrev |                                                           |
| iation { |                                                           |
| #CLIforJ |                                                           |
| FrogArti |                                                           |
| factory- |                                                           |
| Abbrevia |                                                           |
| tion.35} |                                                           |
+----------+-----------------------------------------------------------+
| #        | \                                                         |
| #### Com |                                                           |
| mand opt |                                                           |
| ions {#C |                                                           |
| LIforJFr |                                                           |
| ogArtifa |                                                           |
| ctory-Co |                                                           |
| mmandopt |                                                           |
| ions.36} |                                                           |
+----------+-----------------------------------------------------------+
| \--bu    | \[Optional\]                                              |
| ild-name |                                                           |
|          | Build name. For more details, please refer to [Build      |
|          | Integration                                               |
|          | ](https://www.jfrog.com/confluence/display/CLI/CLI+for+JF |
|          | rog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+----------+-----------------------------------------------------------+
| \--buil  | \[Optional\]                                              |
| d-number |                                                           |
|          | Build number. For more details, please refer to [Build    |
|          | Integration                                               |
|          | ](https://www.jfrog.com/confluence/display/CLI/CLI+for+JF |
|          | rog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+----------+-----------------------------------------------------------+
| \-       | \[Optional\]                                              |
| -project |                                                           |
|          | JFrog project key.                                        |
+----------+-----------------------------------------------------------+
| \--no-   | \[Default: false\]                                        |
| fallback |                                                           |
|          | Set to avoid downloading packages from the VCS, if they   |
|          | are missing in Artifactory.                               |
+----------+-----------------------------------------------------------+
| \        | \[Optional\]                                              |
| --module |                                                           |
|          | [Optional module name for the build-info.]{.s1}           |
+----------+-----------------------------------------------------------+
| #####    | \                                                         |
|  Command |                                                           |
|  argumen |                                                           |
| ts {#CLI |                                                           |
| forJFrog |                                                           |
| Artifact |                                                           |
| ory-Comm |                                                           |
| andargum |                                                           |
| ents.30} |                                                           |
+----------+-----------------------------------------------------------+
| Go       | The command accepts the same arguments and options as the |
| command  | go client.                                                |
+----------+-----------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.23}

##### Example 1 {#CLIforJFrogArtifactory-Example1.13}

[The following example runs Go build command. The dependencies resolved
from Artifactory via the go-virtual
repository.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[Before using this example, please make sure to set repositories for the
Go project using the go-config command.]{style="color: rgb(0,0,0);"}
:::
:::

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt go build
```
:::
:::

[ ]{style="color: rgb(0,0,0);"}

##### Example 2 {#CLIforJFrogArtifactory-Example2.12}

[The following example runs Go build command, while recording the
build-info locally under build name **my-build** and build
number **1**. The build-info can later be published to Artifactory using
the ***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)*** command.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
Before using this example, please make sure to set repositories for the
Go project using the go-config command.
:::
:::

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt go build --build-name=my-build --build-number=1
```
:::
:::

\

#### Publishing Go Packages to Artifactory {#CLIforJFrogArtifactory-PublishingGoPackagestoArtifactory}

[The ]{style="color: rgb(0,0,0);"}*[`go-publish`]{style="color: rgb(0,0,0);"}*[ command packs
and deploys the Go package to the designated Go repository in
Artifactory.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[Before running
the *go-publish*]{style="color: rgb(51,51,51);"}[ command on a project
for the first time, the project should be configured using
the ]{style="color: rgb(51,51,51);"}*go-config*[ command.]{style="color: rgb(51,51,51);"}
:::
:::

The following table lists the command arguments and flags: 

\

::: table-wrap
+--------+-------------------------------------------------------------+
| #####  | go-publish                                                  |
| Comman |                                                             |
| d-name |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Comm |                                                             |
| and-na |                                                             |
| me.17} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | gp                                                          |
| Abbrev |                                                             |
| iation |                                                             |
|  {#CLI |                                                             |
| forJFr |                                                             |
| ogArti |                                                             |
| factor |                                                             |
| y-Abbr |                                                             |
| eviati |                                                             |
| on.36} |                                                             |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
|  Comma |                                                             |
| nd opt |                                                             |
| ions { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| doptio |                                                             |
| ns.37} |                                                             |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| \      | [\[Default: false\] ]{.s1}                                  |
| --deta |                                                             |
| iled-s | [Set true to include a list of the affected files as part   |
| ummary | of the command output summary.]{.s1}                        |
+--------+-------------------------------------------------------------+
| #####  | \                                                           |
| Comman |                                                             |
| d argu |                                                             |
| ment { |                                                             |
| #CLIfo |                                                             |
| rJFrog |                                                             |
| Artifa |                                                             |
| ctory- |                                                             |
| Comman |                                                             |
| dargum |                                                             |
| ent.5} |                                                             |
+--------+-------------------------------------------------------------+
| V      | The version of the Go project that is being published       |
| ersion |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.24}

##### Example 1 {#CLIforJFrogArtifactory-Example1.14}

[To pack and publish the Go package, run the following command. Before
running this command on a project for the first time, the project should
be configured using
the *go-config* command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf gp v1.2.3 
```
:::
:::

##### Example 2 {#CLIforJFrogArtifactory-Example2.13}

[To pack and publish the Go package and also record the build-info as
part of build *my-build-name/1*, run the following
command. ]{style="color: rgb(0,0,0);"}[The build-info can later be
published to Artifactory using
the ]{style="color: rgb(0,0,0);"}***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)***[ command. Before
running this command on a project for the first time, the project should
be configured using
the *go-config* command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf gp v1.2.3 --build-name=my-build-name --build-number=1
```
:::
:::

### [Building Python Packages]{style="font-size: 16.0px;letter-spacing: -0.006em;"} {#CLIforJFrogArtifactory-BuildingPythonPackages}

[[JFrog CLI provides full support for building Python
pac]{style="color: rgb(51,51,51);"}kages using the *pip* and *pipenv*
and poetry package installers. This allows resolving python
dependencies]{style="color: rgb(23,43,77);"}[ from Artifactory, while
recording the downloaded packages. The downloaded packages are stored as
dependencies in the build-info stored in Artifactory.
]{style="color: rgb(0,0,0);"}

[Once the packages are installed, t]{style="color: rgb(0,0,0);"}[he
Python project can be then built and packaged using the the pip, pipenv
or poetry clients. Once built, the produced artifacts can be uploaded to
Artifactory using JFrog CLI\'s upload command and registered as
artifacts in the
build-info.]{style="color: rgb(0,0,0);letter-spacing: 0.0px;"}

#### Example projects {#CLIforJFrogArtifactory-Exampleprojects}

To help you get started, you can use [the sample projects on
GitHub](https://github.com/jfrog/project-examples/tree/master/python-example){.external-link}.

#### Setting Python repository {#CLIforJFrogArtifactory-SettingPythonrepository}

Before you can use JFrog CLI to build your Python projects with
Artifactory, you first need to set the repository for the project.

Here\'s how you set the repositories.

1.  CD to the root of the Python project.
2.  Run the **jf pip-config**, *** jf pipenv-config or jf poetry-config
    c***ommands, depending on whether you\'re using the pip or pipenv
    clients.

::: table-wrap
+----------+-----------------------------------------------------------+
| ####     | pip-config / pipenv-config / poetry-config                |
| # Comman |                                                           |
| d-name { |                                                           |
| #CLIforJ |                                                           |
| FrogArti |                                                           |
| factory- |                                                           |
| Command- |                                                           |
| name.18} |                                                           |
+----------+-----------------------------------------------------------+
| ####     | pipc / pipec / poc                                        |
| # Abbrev |                                                           |
| iation { |                                                           |
| #CLIforJ |                                                           |
| FrogArti |                                                           |
| factory- |                                                           |
| Abbrevia |                                                           |
| tion.37} |                                                           |
+----------+-----------------------------------------------------------+
| #        | \                                                         |
| #### Com |                                                           |
| mand opt |                                                           |
| ions {#C |                                                           |
| LIforJFr |                                                           |
| ogArtifa |                                                           |
| ctory-Co |                                                           |
| mmandopt |                                                           |
| ions.38} |                                                           |
+----------+-----------------------------------------------------------+
| \        | \[Default false\]                                         |
| --global |                                                           |
|          | Set to true, if you\'d like the configuration to be       |
|          | global (for all projects on the machine). Specific        |
|          | projects can override the global configuration.           |
+----------+-----------------------------------------------------------+
| \--s     | \[Optional\]                                              |
| erver-id |                                                           |
| -resolve | Artifactory server ID for resolution. The server should   |
|          | configured using the \'jf c add\' command.                |
+----------+-----------------------------------------------------------+
| \--repo  | \[Optional\]                                              |
| -resolve |                                                           |
|          | Repository for dependencies resolution.                   |
+----------+-----------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.25}

##### Example 1 {#CLIforJFrogArtifactory-Example1.15}

Set repositories for this Python project when using the pip client.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf pipc
```
:::
:::

##### Example 2 {#CLIforJFrogArtifactory-Example2.14}

Set repositories for all Python projects using the pip client on this
machine.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf pipc --global
```
:::
:::

##### Example 3 {#CLIforJFrogArtifactory-Example3.6}

Set repositories for this Python project when using the pipenv client.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf pipec
```
:::
:::

##### Example 4 {#CLIforJFrogArtifactory-Example4.2}

Set repositories for all Python projects using the poetry client on this
machine.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf poc --global
```
:::
:::

##### Example 5 {#CLIforJFrogArtifactory-Example5.1}

Set repositories for this Python project when using the poetry client.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf poc
```
:::
:::

##### Example 6 {#CLIforJFrogArtifactory-Example6.1}

Set repositories for all Python projects using the pipenv client on this
machine.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf pipec --global
```
:::
:::

#### Installing Python packages {#CLIforJFrogArtifactory-InstallingPythonpackages}

The ***pip install***,  ***pipenv install*** and ***poetry install***
commands use the ***pip,*** ***pipenv*** and ***poetry*** clients
respectively, to install the project dependencies from Artifactory. The
commands can also record these packages as build dependencies as part of
the build-info published to Artifactory.

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[[Before running the ]{style="color: rgb(51,51,51);"}*pip
install*,* pipenv install*]{style="color: rgb(51,51,51);"}[ and *poetry
install* commands on a project for the first time, the project should be
configured using the ]{style="color: rgb(51,51,51);"}*pip-config*,
[*pipenv-confiog* or *poetry-config* commands
respectively.]{style="color: rgb(51,51,51);"}
:::
:::

::: {.confluence-information-macro .confluence-information-macro-information}
Recording all dependencies

[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[JFrog CLI records the installed packages as build-info dependencies.
The recorded dependencies are packages installed during the \'jf rt
pip-install\' command execution. When running the command inside a
Python environment, which already has some of the packages installed,
the ]{style="color: rgb(29,28,29);"}[installed packages will not be
included as part of the build-info, because they were not originally
installed by JFrog CLI. ]{style="color: rgb(29,28,29);"}[A warning
message will be added to the log in this
case.]{style="color: rgb(29,28,29);"}

**[How to include all packages in the
build-info?]{style="color: rgb(29,28,29);"}**

[The details of all the installed packages are always cached by the *jf
pip install and* *jf pipenv install* command in the
*.jfrog/projects/deps.cache.json* file, located under the root of the
project. JFrog CLI uses this cache for including previously installed
packages in the build-info.\
If the Python environment had some packages installed prior to the first
execution of the install command, those previously installed packages
will be missing from the cache and therefore will not be included in the
build-info.]{style="color: rgb(29,28,29);"}

Running the install command with both the \'no-cache-dir\' and
\'force-reinstall\' pip options, should re-download and install these
packages, and they will therefore be included in the build-info and
added to the cache. It is also recommended to run the command from
inside a [virtual
environment](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/){.external-link}.
:::
:::

::: table-wrap
+--------+-------------------------------------------------------------+
| Comman | [pip / pipenv / poetry]{.s1}                                |
| d-name |                                                             |
+--------+-------------------------------------------------------------+
| Abbrev | \                                                           |
| iation |                                                             |
+--------+-------------------------------------------------------------+
| C      | \                                                           |
| ommand |                                                             |
| o      |                                                             |
| ptions |                                                             |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| C      | \                                                           |
| ommand |                                                             |
| ar     |                                                             |
| gument |                                                             |
+--------+-------------------------------------------------------------+
| Pip    | [Arguments and options for the pip-install command.]{.s1}   |
| arg    |                                                             |
| uments |                                                             |
+--------+-------------------------------------------------------------+
:::

\

##### Examples {#CLIforJFrogArtifactory-Examples.26}

Example 1

The following command triggers pip install, while recording the build
dependencies as part of build name *my-build* and build number *1*.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf pip install . --build-name my-build --build-number 1
```
:::
:::

Example 2

The following command triggers pipenv install, while recording the build
dependencies as part of build name *my-build* and build number *1*.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf pipenv install . --build-name my-build --build-number 1
```
:::
:::

Example 3

The following are command triggers poetry install, while recording the
build dependencies as part of build name *my-build* and build number
*1*.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf poetry install . --build-name my-build --build-number 1
```
:::
:::

### Building NuGet Packages {#CLIforJFrogArtifactory-BuildingNuGetPackages}

JFrog CLI provides full support for restoring NuGet packages using
the [N](https://github.com/golang/go/wiki/vgo){.external-link
rel="nofollow"}uGet client or the .NET Core CLI. This allows you to
resolve NuGet dependencies[ from and publish your NuGet packages
to Artifactory, while collecting build-info and storing it in
Artifactory. ]{style="color: rgb(0,0,0);"}

[NuGet dependencies resolution is supported by the [***[jf rt
nuget](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-RunningNugetcommands)***]{.underline} command,
which uses the NuGet client or the [***[jf rt
dotnet](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-RunningNugetcommands)***]{.underline} command,
which uses the .NET Core CLI. ]{style="color: rgb(0,0,0);"}

[To publish your NuGet packages to Artifactory, use the [***[jf rt
upload](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-UploadingFiles)***]{.underline} command.]{style="color: rgb(0,0,0);"}

#### Setting NuGet repositories {#CLIforJFrogArtifactory-SettingNuGetrepositories}

[Before using using
the ]{style="color: rgb(23,43,77);"}*[`nuget`]{style="color: rgb(0,0,0);"}*[ or
*[`dotnet`]{style="color: rgb(0,0,0);"}* commands, the project needs to
be pre-configured with the Artifactory server and repository, to be used
for building the project.]{style="color: rgb(23,43,77);"}

[Before using the nuget or dotnet commands, the *nuget-config* or
*dotnet-config* commands should be used respectively. These commands
configure the project with the details of the Artifactory server and
repository, to be used for the
build. ]{style="color: rgb(23,43,77);"}[The *nuget-config* or
*dotnet-config* commands should be executed while inside the root
directory of the project. The configuration is stored by the command in
the
]{style="color: rgb(23,43,77);"}*[`.jfrog`{style="letter-spacing: 0.0px;"}]{style="color: rgb(0,0,0);"}*[ directory
at the root directory of the project. You then have the option of
storing the .jfrog directory with the project sources, or creating this
configuration after the sources are checked
out.]{style="color: rgb(23,43,77);"}

[The following table lists the commands\'
options:]{style="color: rgb(23,43,77);"}

::: table-wrap
+:------------+:-------------------------------------------------------+
| #####       | nuget-config / dotnet-config                           |
|  Command-na |                                                        |
| me {#CLIfor |                                                        |
| JFrogArtifa |                                                        |
| ctory-Comma |                                                        |
| nd-name.19} |                                                        |
+-------------+--------------------------------------------------------+
| #####       | nugetc / dotnetc                                       |
|  Abbreviati |                                                        |
| on {#CLIfor |                                                        |
| JFrogArtifa |                                                        |
| ctory-Abbre |                                                        |
| viation.38} |                                                        |
+-------------+--------------------------------------------------------+
| ##### Comm  | \                                                      |
| and options |                                                        |
|  {#CLIforJF |                                                        |
| rogArtifact |                                                        |
| ory-Command |                                                        |
| options.39} |                                                        |
+-------------+--------------------------------------------------------+
| \--global   | \[Optional\]                                           |
|             |                                                        |
|             | Set to true, if you\'d like the configuration to be    |
|             | global (for all projects on the machine). Specific     |
|             | projects can override the global configuration.        |
+-------------+--------------------------------------------------------+
| \--server   | \[Optional\]                                           |
| -id-resolve |                                                        |
|             | Artifactory server ID for resolution. The server       |
|             | should configured using the \'jf c add\' command.      |
+-------------+--------------------------------------------------------+
| \--r        | \[Optional\]                                           |
| epo-resolve |                                                        |
|             | Repository for dependencies resolution.                |
+-------------+--------------------------------------------------------+
| [\--nug     | [\[Default: false\]\                                   |
| et-v2]{.s1} | Set to true if you\'d like to use the NuGet V2         |
|             | protocol when restoring packages from Artifactory      |
|             | (instead of NuGet V3).]{.s1}                           |
+-------------+--------------------------------------------------------+
| ###         | The command accepts no arguments                       |
| ## Command  |                                                        |
| arguments { |                                                        |
| #CLIforJFro |                                                        |
| gArtifactor |                                                        |
| y-Commandar |                                                        |
| guments.31} |                                                        |
+-------------+--------------------------------------------------------+
:::

#### [Running Nuget and Dotnet commands]{style="color: rgb(94,108,132);font-size: 12.0px;letter-spacing: 0.0px;font-weight: 600;"} {#CLIforJFrogArtifactory-RunningNugetandDotnetcommands}

[The ]{style="color: rgb(0,0,0);"}*nuget*[ command runs the *NuGet
client* and the *dotnet* command runs the *.NET Core
CLI*.]{style="color: rgb(0,0,0);"}

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
[Before running the ]{style="color: rgb(51,51,51);"}*nuget*[ command on
a project for the first time, the project should be configured using
the ]{style="color: rgb(51,51,51);"}*nuget-config*[ command.]{style="color: rgb(51,51,51);"}

[Before running the *dotnet* command on a project for the first time,
the project should be configured using
the *dotnet-config* command.]{style="color: rgb(51,51,51);"}
:::
:::

[The following table lists the commands arguments and
options:]{style="letter-spacing: 0.0px;"}

::: table-wrap
+--------+-------------------------------------------------------------+
| Comman | nuget / dotnet                                              |
| d-name |                                                             |
+--------+-------------------------------------------------------------+
| Abbrev | \                                                           |
| iation |                                                             |
+--------+-------------------------------------------------------------+
| C      | \                                                           |
| ommand |                                                             |
| o      |                                                             |
| ptions |                                                             |
+--------+-------------------------------------------------------------+
| \      | \[Optional\]                                                |
| --buil |                                                             |
| d-name | Build name. For more details, please refer to [Build        |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| build- |                                                             |
| number | Build number. For more details, please refer to [Build      |
|        | Integra                                                     |
|        | tion](https://www.jfrog.com/confluence/display/CLI/CLI+for+ |
|        | JFrog+Artifactory#CLIforJFrogArtifactory-BuildIntegration). |
+--------+-------------------------------------------------------------+
| \--p   | \[Optional\]                                                |
| roject |                                                             |
|        | JFrog project key.                                          |
+--------+-------------------------------------------------------------+
| \--    | \[Optional\]                                                |
| module |                                                             |
|        | [Optional module name for the build-info.]{.s1}             |
+--------+-------------------------------------------------------------+
| C      | The command accepts the same arguments and options as the   |
| ommand | NuGet client / .NET Core CLI.                               |
| ar     |                                                             |
| gument |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.27}

##### Example 1 {#CLIforJFrogArtifactory-Example1.16}

[Run nuget restore for the solution at the current directory, while
resolving the NuGet dependencies from the pre-configured Artifactory
repository. Use the NuGet client for this
command]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf nuget restore
```
:::
:::

##### Example 2 {#CLIforJFrogArtifactory-Example2.15}

[Run dotnet restore for the solution at the current directory, while
resolving the NuGet dependencies from the pre-configured Artifactory
repository. Use the .NET Core CLI for this
command]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf dotnet restore
```
:::
:::

##### Example 3 {#CLIforJFrogArtifactory-Example3.7}

[Run dotnet restore for the solution at the current directory, while
resolving the NuGet dependencies from the pre-configured Artifactory
repository.]{style="color: rgb(0,0,0);"} 

[In addition, record the build-info as part of
build *my-build-name/1*. ]{style="color: rgb(0,0,0);"}[The build-info
can later be published to Artifactory using
the ]{style="color: rgb(0,0,0);"}***[build-publish](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-PublishingBuildInformation)***[ command:]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf dotnet restore --build-name=my-build-name --build-number=1
```
:::
:::

### Packaging and Publishing Terraform Modules {#CLIforJFrogArtifactory-PackagingandPublishingTerraformModules}

JFrog CLI supports packaging Terraform modules and publishing them to a
Terraform repository in Artifactory using the ***jf terraform publish***
command.

We recommend using [this example project on
GitHub](https://github.com/jfrog/project-examples/tree/master/terraform-example){.external-link}
for an easy start up.

Before using the ***jf terraform publish*** command for the first time,
you first need to configure the Terraform repository for your Terraform
project. To do this, follow these steps:

1.  \'cd\' into the root directory for your Terraform project.
2.  Run the interactive **jf terraform-config** command and set
    deployment repository name.

The **jf terraform-config** command will store the repository name
inside the ***.jfrog*** directory located in the current directory. You
can also add the ***\--global*** command option, if you prefer the
repository configuration applies to all projects on the machine. In that
case, the configuration will be saved in JFrog CLI\'s home directory.

[The following table lists the command
options:]{style="color: rgb(23,43,77);"}

::: table-wrap
+:----------------+:---------------------------------------------------+
| ##### Command-n | terraform-config                                   |
| ame {#CLIforJFr |                                                    |
| ogArtifactory-C |                                                    |
| ommand-name.20} |                                                    |
+-----------------+----------------------------------------------------+
| ##### Abbreviat | tfc                                                |
| ion {#CLIforJFr |                                                    |
| ogArtifactory-A |                                                    |
| bbreviation.39} |                                                    |
+-----------------+----------------------------------------------------+
| #####           | \                                                  |
|  Command option |                                                    |
| s {#CLIforJFrog |                                                    |
| Artifactory-Com |                                                    |
| mandoptions.40} |                                                    |
+-----------------+----------------------------------------------------+
| \--global       | \[Optional\]                                       |
|                 |                                                    |
|                 | Set to true, if you\'d like the configuration to   |
|                 | be global (for all projects on the machine).       |
|                 | Specific projects can override the global          |
|                 | configuration.                                     |
+-----------------+----------------------------------------------------+
| \--s            | \[Optional\]                                       |
| erver-id-deploy |                                                    |
|                 | Artifactory server ID for deployment. The server   |
|                 | should configured using the \'jf c add\' command.  |
+-----------------+----------------------------------------------------+
| \--repo-deploy  | \[Optional\]                                       |
|                 |                                                    |
|                 | Repository for artifacts deployment.               |
+-----------------+----------------------------------------------------+
| ##### Com       | The command accepts no arguments                   |
| mand arguments  |                                                    |
| {#CLIforJFrogAr |                                                    |
| tifactory-Comma |                                                    |
| ndarguments.32} |                                                    |
+-----------------+----------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.28}

##### Example 1 {#CLIforJFrogArtifactory-Example1.17}

[Configuring the Terraform repository for a project, while inside the
root directory of the project]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf tfc
```
:::
:::

##### Example 2 {#CLIforJFrogArtifactory-Example2.16}

[Configuring the Terraform repository for all projects on the
machine]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf tfc --global
```
:::
:::

##### Example 3 {#CLIforJFrogArtifactory-Example3.8}

[Configuring the Terraform repository for a project, while providing the
configured server and repository ad command options, to avoid
interactive prompts.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf tfc --server-id-deploy my-rt-server --repo-deploy terraform-local
```
:::
:::

\

The ***terraform publish*** command creates a terraform package for the
module in the current directory, and publishes it to the configured
Terraform repository in Artifactory. 

The following table lists the commands arguments and options:

::: table-wrap
+--------+-------------------------------------------------------------+
| Comman | terraform publish                                           |
| d-name |                                                             |
+--------+-------------------------------------------------------------+
| Abbrev | tf p                                                        |
| iation |                                                             |
+--------+-------------------------------------------------------------+
| C      | \                                                           |
| ommand |                                                             |
| o      |                                                             |
| ptions |                                                             |
+--------+-------------------------------------------------------------+
|        | \[Mandatory\]                                               |
|  --nam |                                                             |
| espace | Terraform module namespace                                  |
+--------+-------------------------------------------------------------+
| [\-    | \[Mandatory\]                                               |
| -provi |                                                             |
| der]{. | Terraform module provider                                   |
| pl-s1} |                                                             |
+--------+-------------------------------------------------------------+
| \--tag | \[Mandatory\]                                               |
|        |                                                             |
|        | Terraform module tag                                        |
+--------+-------------------------------------------------------------+
| \      | [\[Optional\]]{.s1}                                         |
| --excl |                                                             |
| usions | [A list of Semicolon-separated exclude patterns]{.s1}       |
|        | wildcards. Paths inside the module matching one of the      |
|        | patterns are excluded from the deployed package.            |
+--------+-------------------------------------------------------------+
| C      | The command accepts no arguments                            |
| ommand |                                                             |
| ar     |                                                             |
| gument |                                                             |
+--------+-------------------------------------------------------------+
:::

##### Examples {#CLIforJFrogArtifactory-Examples.29}

##### Example 1 {#CLIforJFrogArtifactory-Example1.18}

[The command creates a package for the Terraform module in the current
directory, and publishes it to the Terraform repository (configured by
the ***jf tfc command***) with the provides namespece, provider and
tag.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf tf p --namespace example --provider aws --tag v0.0.1
```
:::
:::

##### Example 2 {#CLIforJFrogArtifactory-Example2.17}

[The command creates a package for the Terraform module in the current
directory, and publishes it to the Terraform repository (configured by
the ***jf tfc command***) with the provides namespace, provider and tag.
The published package will not include the module paths which include
either *test* or *ignore*.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf tf p --namespace example --provider aws --tag v0.0.1 --exclusions "*test*;*ignore*"
```
:::
:::

## [Managing Users and Groups]{style="font-size: 20.0px;font-weight: normal;letter-spacing: -0.008em;"} {#CLIforJFrogArtifactory-ManagingUsersandGroups}

JFrog CLI offers a set of commands for managing users and groups. You
can create and delete a bulk of users, by providing a CSV file with the
users\' details as an input. You can also add a list of users to a
group, as well as creating and deleting groups.

### Creating Users {#CLIforJFrogArtifactory-CreatingUsers}

This command allows creating a bulk of users. The details of the users
are provided in a CSV format file. Here\'s the file format.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
"username","password","email"
"username1","password1","john@c.com"
"username2","password1","alice@c.com"
```
:::
:::

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
The first line in the CSV is cells\' headers. It is mandatory and is
used by the command to map the cell value to the users\' details.

The CSV can include additional columns, with different headers, which
will be ignored by the command.
:::
:::

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt users-create]{.s1}                                   |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.21} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | [rt uc]{.s1}                                             |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.40} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.41} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| [\--      | [\[Mandatory\] ]{.s1}                                    |
| csv]{.s1} |                                                          |
|           | [Path to a CSV file with the users\' details. The first  |
|           | row of the file should include the name,password,email   |
|           | headers.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| [\--repl  | [\[Optional\] ]{.s1}                                     |
| ace]{.s1} |                                                          |
|           | [Set to true if you\'d like existing users or groups to  |
|           | be replaced.]{.s1}                                       |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| users-gro |                                                          |
| ups]{.s1} | [A list of comma-separated groups for the new users to   |
|           | be associated to.]{.s1}                                  |
+-----------+----------------------------------------------------------+
| #####     | The command accepts no arguments                         |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.33} |                                                          |
+-----------+----------------------------------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.10}

Create new users according to details defined in the path/to/users.csv
file.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt users-create --csv path/to/users.csv
```
:::
:::

\

### Deleting Users {#CLIforJFrogArtifactory-DeletingUsers}

This command allows deleting a bulk of users. The command a list of
usernames to delete. The list can be either provided as a
comma-seperated argument, or as a CSV file, which includes one column
with the usernames. Here\'s the CSV format.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
"username"
"username1"
"username2"
"username2"
```
:::
:::

::: {.confluence-information-macro .confluence-information-macro-information}
[]{.aui-icon .aui-icon-small .aui-iconfont-info
.confluence-information-macro-icon}

::: confluence-information-macro-body
The first line in the CSV is cells\' headers. It is mandatory and is
used by the command to map the cell value to the users\' details.

The CSV can include additional columns, with different headers, which
will be ignored by the command.
:::
:::

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt users-delete]{.s1}                                   |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.22} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | [rt udel]{.s1}                                           |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.41} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.42} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| csv]{.s1} |                                                          |
|           | Path to a csv file with the usernames to delete. The     |
|           | first row of the file is the reserved for the cells\'    |
|           | headers. It must include the \"username\" header.        |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.34} |                                                          |
+-----------+----------------------------------------------------------+
| [users    | [Comma-separated list of usernames to delete. If the     |
| l         | \--csv command option is used, then this argument        |
| ist]{.s1} | becomes optional.]{.s1}                                  |
+-----------+----------------------------------------------------------+
:::

##### Example 1 {#CLIforJFrogArtifactory-Example1.19}

Delete the users according to the usernames defined in the
path/to/users.csv file.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt users-delete --csv path/to/users.csv
```
:::
:::

##### Example 2 {#CLIforJFrogArtifactory-Example2.18}

Delete the users according with the u1, u2 and u3 usernames.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt users-delete "u1,u2,u3"
```
:::
:::

\

### Creating Groups {#CLIforJFrogArtifactory-CreatingGroups}

This command creates a new users group.

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt group-create]{.s1}                                   |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.23} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | [rt gc]{.s1}                                             |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.42} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.43} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.35} |                                                          |
+-----------+----------------------------------------------------------+
| [group    | [The name of the group to create.]{.s1}                  |
| n         |                                                          |
| ame]{.s1} |                                                          |
+-----------+----------------------------------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.11}

Create a new group name *reviewers*.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt group-create reviewers
```
:::
:::

### Adding Users to Groups {#CLIforJFrogArtifactory-AddingUserstoGroups}

This command adds a list fo existing users to a group.

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt group-add-users]{.s1}                                |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.24} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | [rt gau]{.s1}                                            |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.43} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.44} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.36} |                                                          |
+-----------+----------------------------------------------------------+
| [group    | [The name of the group to add users to.]{.s1}            |
| n         |                                                          |
| ame]{.s1} |                                                          |
+-----------+----------------------------------------------------------+
| [users    | [Comma-seperated list of usernames to add to the         |
| l         | specified group.]{.s1}                                   |
| ist]{.s1} |                                                          |
+-----------+----------------------------------------------------------+
:::

##### Example  {#CLIforJFrogArtifactory-Example.12}

Add to group reviewers the users with the following usernames: u1, u2
and u3.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt group-add-users "reviewers" "u1,u2,u3"
```
:::
:::

\

### Deleting Groups {#CLIforJFrogArtifactory-DeletingGroups}

This command deletes a group.

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt group-delete]{.s1}                                   |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.25} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | [rt gdel]{.s1}                                           |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.44} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.45} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.37} |                                                          |
+-----------+----------------------------------------------------------+
| [group    | [The name of the group to delete.]{.s1}                  |
| n         |                                                          |
| ame]{.s1} |                                                          |
+-----------+----------------------------------------------------------+
:::

##### Example  {#CLIforJFrogArtifactory-Example.13}

Delete the *reviewers* group.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt group-delete "reviewers"
```
:::
:::

## [Managing Repositories]{style="color: rgb(0,100,0);font-size: 20.0px;letter-spacing: -0.008em;"} {#CLIforJFrogArtifactory-ManagingRepositories}

JFrog CLI offers a set of commands for managing Artifactory
repositories. You can create, update and delete repositories. To make it
easier to manage repositories, the commands which create and update the
repositories accept a pre-defined configuration template file. This
template file can also include variables. which can be later replaced
with values, when creating or updating the repositories. The
configuration template file is created using the ***jf rt
repo-template*** command.

### Creating or Configuration Template {#CLIforJFrogArtifactory-CreatingorConfigurationTemplate}

This is an interactive command, which creates a configuration template
file. This file should be used as an argument for the ***jf rt
repo-create*** or the ***jf rt repo-update*** commands.

When using this command to create the template, you can also provide
replaceable variable, instead of fixes values. Then when the template is
used to create or update repositories, values can be provided to replace
the variables in the template.

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt repo-template]{.s1}                                  |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.26} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | [rt rpt]{.s1}                                            |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.45} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | The command has no options.                              |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.46} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.38} |                                                          |
+-----------+----------------------------------------------------------+
| [template | [Specifies the local file system path for the template   |
| p         | file created by the command. The file should not         |
| ath]{.s1} | exist.]{.s1}                                             |
+-----------+----------------------------------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.14}

[Create a configuration template, with a variable for the repository
name. Then, create a repository using this template, and provide
repository name to replace the variable.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt repo-template template.json
Select the template type (press Tab for options): create
Insert the repository key > ${repo-name}
Select the repository class (press Tab for options): local
Select the repository's package type (press Tab for options): generic
You can type ":x" at any time to save and exit.
Select the next configuration key (press Tab for options): :x
[Info] Repository configuration template successfully created at template.json.
$
$ jf rt repo-create template.json --vars "repo-name=my-repo"
[Info] Creating local repository...
[Info] Done creating repository.
```
:::
:::

\

### Creating  / Updating Repositories  {#CLIforJFrogArtifactory-Creating/UpdatingRepositories}

These two commands create a new repository and updates an existing a
repository. Both commands accept as an argument a configuration
template, which can be created by the ***jf rt repo-template*** command.
The template also supports variables, which can be replaced with values,
provided when it is used.

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt repo-create / rt repo-update]{.s1}                   |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.27} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | [rt rc / rt ru]{.s1}                                     |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.46} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.47} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| \--vars   | [\[Optional\]]{.s1}                                      |
|           |                                                          |
|           | [List of variables in the form of                        |
|           | \"key1=value1;key2=value2;\...\" to be replaced in the   |
|           | template. In the template, the variables should be used  |
|           | as follows: \${key1}.]{.s1}                              |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.39} |                                                          |
+-----------+----------------------------------------------------------+
| [template | [Specifies the local file system path for the template   |
| p         | file to be used for the repository creation. The         |
| ath]{.s1} | template can be created using the \"jf rt rpt\"          |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
:::

##### Example 1 {#CLIforJFrogArtifactory-Example1.20}

[Create a repository, using the *template.json* file previously
generated by the *repo-template* command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt repo-create template.json
```
:::
:::

##### Example 2 {#CLIforJFrogArtifactory-Example2.19}

[Update a repository, using the *template.json* file previously
generated by the *repo-template* command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt repo-update template.json
```
:::
:::

##### Example 3 {#CLIforJFrogArtifactory-Example3.9}

[Update a repository, using the *template.json* file previously
generated by the *repo-template* command. Replace the repo-name variable
inside the template with a name for the updated
repository.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt repo-update template.json --vars "repo-name=my-repo"
```
:::
:::

### Deleting Repositories  {#CLIforJFrogArtifactory-DeletingRepositories}

This command permanently deletes a repository, including all of its
content.

::: table-wrap
+:----------+:---------------------------------------------------------+
| \         | [rt repo-delete]{.s1}                                    |
+-----------+----------------------------------------------------------+
| #####     | [rt rdel]{.s1}                                           |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.47} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.48} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| \--quiet  | [\[Default: \$CI\] ]{.s1}                                |
|           |                                                          |
|           | [Set to true to skip the delete confirmation             |
|           | message.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.40} |                                                          |
+-----------+----------------------------------------------------------+
| [r        | Specifies the repositories that should be removed. You   |
| epository | can use wildcards to specify multiple repositories.      |
| key]{.s1} |                                                          |
+-----------+----------------------------------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.15}

[Delete a repository from Artifactory.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt repo-delete generic-local
```
:::
:::

## Managing Replications {#CLIforJFrogArtifactory-ManagingReplications}

JFrog CLI offers commands creating and deleting replication jobs in
Artifactory. To make it easier to create replication jobs, the commands
which creates the replication job accepts a pre-defined configuration
template file. This template file can also include variables. which can
be later replaced with values, when creating the replication job. The
configuration template file is created using the ***jf rt
replication-template*** command.

### Creating a Configuration Template {#CLIforJFrogArtifactory-CreatingaConfigurationTemplate}

This command creates a configuration template file, which should be used
as an argument for the ***jf rt replication-create*** command.

[When using this command to create the template, you can also provide
replaceable variable, instead of fixes values. Then when the template is
used to create replication jobs, values can be provided to replace the
variables in the template.]{style="color: rgb(23,43,77);"}

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt replication-template]{.s1}                           |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.28} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | rt rplt                                                  |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.48} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | The command has no options.                              |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.49} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.41} |                                                          |
+-----------+----------------------------------------------------------+
| [template | [Specifies the local file system path for the template   |
| p         | file created by the command. The file should not         |
| ath]{.s1} | exist.]{.s1}                                             |
+-----------+----------------------------------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.16}

[Create a configuration template, with two variables for the source and
target repositories. Then, create a replication job using this template,
and provide source and target repository names to replace the
variables.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
$ jf rt rplt template.json
Select replication job type (press Tab for options): push
Enter source repo key > ${source}
Enter target repo key > ${target}
Enter target server id (press Tab for options): my-server-id
Enter cron expression for frequency (for example, 0 0 12 * * ? will replicate daily) > 0 0 12 * * ?
You can type ":x" at any time to save and exit.
Select the next property > :x
[Info] Replication creation config template successfully created at template.json.
$
$ jf rt rplc template.json --vars "source=generic-local;target=generic-local"
[Info] Done creating replication job.
```
:::
:::

\

### Creating  Replication Jobs {#CLIforJFrogArtifactory-CreatingReplicationJobs}

This command creates a new replication job for a repository. The command
accepts as an argument a configuration template, which can be created by
the ***jf rt replication-template*** command. The template also supports
variables, which can be replaced with values, provided when it is used.

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [replication-create]{.s1}                                |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.29} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | rt rplc                                                  |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.49} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.50} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| \--vars   | [ \[Optional\] ]{.s1}                                    |
|           |                                                          |
|           | [List of variables in the form of                        |
|           | \"key1=value1;key2=value2;\...\" to be replaced in the   |
|           | template. In the template, the variables should be used  |
|           | as follows: \${key1}.]{.s1}                              |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.42} |                                                          |
+-----------+----------------------------------------------------------+
| [template | [Specifies the local file system path for the template   |
| p         | file to be used for the replication job creation. The    |
| ath]{.s1} | template can be created using the \"jf rt rplt\"         |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
:::

##### Example 1 {#CLIforJFrogArtifactory-Example1.21}

[Create a replication job, using the *template.json* file previously
generated by the *replication-template*
command.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt rplc template.json
```
:::
:::

##### [Example 2]{style="color: rgb(94,108,132);font-size: 14.0px;letter-spacing: 0.0px;"} {#CLIforJFrogArtifactory-Example2.20}

[Update a replication job, using the *template.json* file previously
generated by the *replication-template* command. Replace the
*source* and *target* variables inside the template with the names of
the replication source and target
reposities.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt rplc template.json --vars "source=my-source-repo;target=my-target-repo"
```
:::
:::

### Deleting Replication jobs  {#CLIforJFrogArtifactory-DeletingReplicationjobs}

This command permanently deletes a replication jobs from a repository.

::: table-wrap
+:----------+:---------------------------------------------------------+
| \         | [rt replication-delete]{.s1}                             |
+-----------+----------------------------------------------------------+
| #####     | rt rpldel                                                |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.50} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.51} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| \--quiete | [\[Default: \$CI\] ]{.s1}                                |
|           |                                                          |
|           | [Set to true to skip the delete confirmation             |
|           | message.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.43} |                                                          |
+-----------+----------------------------------------------------------+
| [r        | [The repository from which the replications will be      |
| epository | deleted.]{.s1}                                           |
| key]{.s1} |                                                          |
+-----------+----------------------------------------------------------+
:::

##### Example {#CLIforJFrogArtifactory-Example.17}

[Delete a repository from Artifactory.]{style="color: rgb(0,0,0);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
jf rt rpldel my-repo-name
```
:::
:::

## Managing Permission Targets {#CLIforJFrogArtifactory-ManagingPermissionTargets}

JFrog CLI offers commands creating, updating and deleting permission
targets in Artifactory. To make it easier to create and update
permission targets, the commands which create and update the permission
targets accept a pre-defined configuration template file. This template
file can also include variables. which can be later replaced with
values, when creating or updating the permission target. The
configuration template file is created using the ***jf rt
permission-target-template*** command.

### Creating a Configuration Template {#CLIforJFrogArtifactory-CreatingaConfigurationTemplate.1}

This command creates a configuration template file, which should be used
as an argument for the ***jf rt permission-target-create*** and ***jf rt
permission-target-update*** commands.

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [rt permission-target-template]{.s1}                     |
| Command-n |                                                          |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.30} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | rt ptt                                                   |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.51} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | The command has no options.                              |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.52} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.44} |                                                          |
+-----------+----------------------------------------------------------+
| [template | [Specifies the local file system path for the template   |
| p         | file created by the command. The file should not         |
| ath]{.s1} | exist.]{.s1}                                             |
+-----------+----------------------------------------------------------+
:::

### Creating / Updating  Permission Targets {#CLIforJFrogArtifactory-Creating/UpdatingPermissionTargets}

This command creates a new permission target. The command accepts as an
argument a configuration template, which can be created by the ***jf rt
permission-target-template*** command. The template also supports
variables, which can be replaced with values, provided when it is used.

::: table-wrap
+:----------+:---------------------------------------------------------+
| #####     | [permission-target-create                                |
| Command-n | / permission-target-update]{.s1}                         |
| ame {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Command |                                                          |
| -name.31} |                                                          |
+-----------+----------------------------------------------------------+
| #####     | rt ptc / rt ptu                                          |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.52} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.53} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| \--vars   | [ \[Optional\] ]{.s1}                                    |
|           |                                                          |
|           | [List of variables in the form of                        |
|           | \"key1=value1;key2=value2;\...\" to be replaced in the   |
|           | template. In the template, the variables should be used  |
|           | as follows: \${key1}.]{.s1}                              |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.45} |                                                          |
+-----------+----------------------------------------------------------+
| [template | [Specifies the local file system path for the template   |
| p         | file to be used for the permission target creation or    |
| ath]{.s1} | update. The template can be created using the \"jf rt    |
|           | ptt\" command.]{.s1}                                     |
+-----------+----------------------------------------------------------+
:::

### Deleting Permission Targets  {#CLIforJFrogArtifactory-DeletingPermissionTargets}

This command permanently deletes a permission target.

::: table-wrap
+:----------+:---------------------------------------------------------+
| \         | [rt permission-target-delete]{.s1}                       |
+-----------+----------------------------------------------------------+
| #####     | rt ptdel                                                 |
| Abbreviat |                                                          |
| ion {#CLI |                                                          |
| forJFrogA |                                                          |
| rtifactor |                                                          |
| y-Abbrevi |                                                          |
| ation.53} |                                                          |
+-----------+----------------------------------------------------------+
| ##        | \                                                        |
| ### Comma |                                                          |
| nd option |                                                          |
| s {#CLIfo |                                                          |
| rJFrogArt |                                                          |
| ifactory- |                                                          |
| Commandop |                                                          |
| tions.54} |                                                          |
+-----------+----------------------------------------------------------+
| [\--      | [\[Optional\] ]{.s1}                                     |
| server-id |                                                          |
| ]{.s1}    | [Artifactory server ID configured using the config       |
|           | command.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| \--quiete | [\[Default: \$CI\] ]{.s1}                                |
|           |                                                          |
|           | [Set to true to skip the delete confirmation             |
|           | message.]{.s1}                                           |
+-----------+----------------------------------------------------------+
| #####     | \                                                        |
| Command a |                                                          |
| rguments  |                                                          |
| {#CLIforJ |                                                          |
| FrogArtif |                                                          |
| actory-Co |                                                          |
| mmandargu |                                                          |
| ments.46} |                                                          |
+-----------+----------------------------------------------------------+
| [p        | [The ]{.s1}[permission target that should be             |
| ermission | removed.]{style="letter-spacing: 0.0px;"}                |
| target    |                                                          |
| n         |                                                          |
| ame]{.s1} |                                                          |
+-----------+----------------------------------------------------------+
:::

## [ Using File Specs]{style="font-weight: normal;letter-spacing: -0.008em;"} {#CLIforJFrogArtifactory-UsingFileSpecs}

To achieve complex file manipulations you may require several CLI
commands. For example, you may need to upload several different sets of
files to different repositories. To simplify the implementation of these
complex manipulations, you can apply JFrog
CLI **download, **upload, **move, copy** and **delete** commands with
JFrog Artifactory using `--spec` option to replace the inline command
arguments and options. Similarly, you can **create and update release
bundles** by providing the `--spec` command option.  Each command uses
an array of file specifications in JSON format with a corresponding
schema as described in the sections below. Note that if any of these
commands are issued using both inline options as well as the file specs,
then the inline options override their counterparts specified in the
file specs.

### File Spec Schemas {#CLIforJFrogArtifactory-FileSpecSchemas}

#### Copy and Move Commands Spec Schema {#CLIforJFrogArtifactory-CopyandMoveCommandsSpecSchema}

The file spec schema for the copy and move commands is as follows:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
        {
            "pattern" or "aql": "[Mandatory]",
            "target": "[Mandatory]",
            "props": "[Optional]",
            "excludeProps": "[Optional]",
            "recursive": "[Optional, Default: 'true']",
            "flat" : "[Optional, Default: 'false']",
            "exclusions": ["[Optional, Applicable only when 'pattern' is specified]"],
            "archiveEntries": "[Optional]",
            "build": "[Optional]",
            "bundle": "[Optional]",
            "validateSymlinks": "[Optional]",
            "sortBy" : ["[Optional]"],
            "sortOrder": "[Optional, Default: 'asc']",
            "limit": [Optional],
            "offset": [Optional]
        }
    ]
}
```
:::
:::

#### Download Command Spec Schema {#CLIforJFrogArtifactory-DownloadCommandSpecSchema}

The file spec schema for the download command is as follows:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
        {
            "pattern" or "aql": "[Mandatory]",
            "target": "[Optional]",
            "props": "[Optional]",
            "excludeProps": "[Optional]",
            "recursive": "[Optional, Default: 'true']",
            "flat" : "[Optional, Default: 'false']",
            "exclusions": ["[Optional, Applicable only when 'pattern' is specified]"],
            "archiveEntries": "[Optional]",
            "build": "[Optional]",
            "bundle": "[Optional]",
            "sortBy" : ["[Optional]"],
            "sortOrder": "[Optional, Default: 'asc']",
            "limit": [Optional],
            "offset": [Optional]
        }
    ]
}
```
:::
:::

#### Create and Update Release Bundle Commands Spec Schema {#CLIforJFrogArtifactory-CreateandUpdateReleaseBundleCommandsSpecSchema}

The file spec schema for the create amd update release bundle commands
is as follows:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
        {
            "pattern" or "aql": "[Mandatory]",
            "target": "[Optional]",
            "props": "[Optional]",
            "targetProps": "[Optional]",
            "excludeProps": "[Optional]",
            "recursive": "[Optional, Default: 'true']",
            "flat" : "[Optional, Default: 'false']",
            "exclusions": ["[Optional, Applicable only when 'pattern' is specified]"],
            "archiveEntries": "[Optional]",
            "build": "[Optional]",
            "bundle": "[Optional]",
            "sortBy" : ["[Optional]"],
            "sortOrder": "[Optional, Default: 'asc']",
            "limit": [Optional],
            "offset": [Optional]
        }
    ]
}
```
:::
:::

#### Upload Command Spec Schema {#CLIforJFrogArtifactory-UploadCommandSpecSchema}

The file spec schema for the upload command is as follows:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
        {
            "pattern": "[Mandatory]",
            "target": "[Mandatory]",
            "targetProps": "[Optional]",
            "recursive": "[Optional, Default: 'true']",
            "flat" : "[Optional, Default: 'true']",
            "regexp": "[Optional, Default: 'false']",
            "ant": "[Optional, Default: 'false']",
            "archive": "[Optional, Must be: 'zip']",
            "exclusions": ["[Optional]"]
        }
    ]
}
```
:::
:::

#### Search, Set-Props and Delete Commands Spec Schema {#CLIforJFrogArtifactory-Search,Set-PropsandDeleteCommandsSpecSchema}

The file spec schema for the search and delete commands are as follows:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
        {
            "pattern" or "aql": "[Mandatory]",
            "props": "[Optional]",
            "excludeProps": "[Optional]",
            "recursive": "[Optional, Default: 'true']",
            "exclusions": ["[Optional, Applicable only when 'pattern' is specified]"],
            "archiveEntries": "[Optional]",
            "build": "[Optional]",
            "bundle": "[Optional]",
            "sortBy" : ["[Optional]"],
            "sortOrder": "[Optional, Default: 'asc']",
            "limit": [Optional],
            "offset": [Optional]
        }
    ]
}
```
:::
:::

##### Examples {#CLIforJFrogArtifactory-Examples.30}

The following examples can help you get started using File Specs.

##### Example 1: {#CLIforJFrogArtifactory-Example1:}

Download all files located under the *`all-my-frogs`* directory in
the *`my-local-repo`* repository to the *`froggy`* directory.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
        {
            "pattern": "my-local-repo/all-my-frogs/",
            "target": "froggy/"
        }
    ]
}
```
:::
:::

##### Example 2:  {#CLIforJFrogArtifactory-Example2:}

Download all files located under the *`all-my-frogs`* directory in
the *`my-local-repo`* repository to the *`froggy`* directory. Download
only files which are artifacts of build number 5 of build *my-build*.

\

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
        {
            "pattern": "my-local-repo/all-my-frogs/",
            "target": "froggy/",
            "build": "my-build/5"
        }
    ]
}
```
:::
:::

\

\

##### Example 3: {#CLIforJFrogArtifactory-Example3:}

Download all files retrieved by the AQL query to
the *`froggy `*directory.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
  "files": [
    {
      "aql": {
        "items.find": {
          "repo": "my-local-repo",
          "$or": [
            {
              "$and": [
                {
                  "path": {
                    "$match": "."
                  },
                  "name": {
                    "$match": "a1.in"
                  }
                }
              ]
            },
            {
              "$and": [
                {
                  "path": {
                    "$match": "*"
                  },
                  "name": {
                    "$match": "a1.in"
                  }
                }
              ]
            }
          ]
        }
      },
      "target": "froggy/"
    }
  ]
}
```
:::
:::

##### Example 4: Upload {#CLIforJFrogArtifactory-Example4:Upload}

1.  All zip files located under the *`resources`* directory to
    the *`zip`* folder, under the
    *[all-my-frogs]{style="color: rgb(23,43,77);"} *repository.

    AND 

2.  All TGZ files located under the *`resources`* directory to
    the *tgz* folder, under
    the *[all-my-frogs]{style="color: rgb(23,43,77);"} *repository.

3.  Tag all zip files with type = zip and status = ready.

4.  Tag all tgz files with type = tgz and status = ready.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
  "files": [
    {
      "pattern": "resources/*.zip",
      "target": "all-my-frogs/zip/",
      "props": "type=zip;status=ready"
    },
    {
      "pattern": "resources/*.tgz",
      "target": "all-my-frogs/tgz/",
      "props": "type=tgz;status=ready"
    }
  ]
}
```
:::
:::

##### Example 5: {#CLIforJFrogArtifactory-Example5:}

Upload all zip files located under
the *`resources`{style="color: rgb(23,43,77);font-size: 14.0px;font-weight: 400;letter-spacing: 0.0px;"}*[ directory
to
the ]{style="color: rgb(23,43,77);font-size: 14.0px;font-weight: 400;letter-spacing: 0.0px;"}*`zip`{style="color: rgb(23,43,77);font-size: 14.0px;font-weight: 400;letter-spacing: 0.0px;"}*[ folder,
under the
]{style="color: rgb(23,43,77);font-size: 14.0px;font-weight: 400;letter-spacing: 0.0px;"}*[*all-my-frogs*]{style="color: rgb(23,43,77);"} *[repository.]{style="color: rgb(23,43,77);font-size: 14.0px;font-weight: 400;letter-spacing: 0.0px;"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
  "files": [
    {
      "pattern": "resources/*.zip",
      "target": "all-my-frogs/zip/"
    }
  ]
}
```
:::
:::

##### Example 6: {#CLIforJFrogArtifactory-Example6:}

Package all files located (including sub-directories) under
the *`resources`*[ directory into a zip archive named
*archive.zip*]{style="color: rgb(23,43,77);"}[, and upload it into the
root of
the ]{style="color: rgb(23,43,77);"}*[all-my-frogs]{style="color: rgb(23,43,77);"} *[repository.]{style="color: rgb(23,43,77);"}

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
  "files": [
    {
      "pattern": "resources/",
      "archive": "zip",
      "target": "all-my-frogs/"
    }
  ]
}
```
:::
:::

###### **Example 7:**  {#CLIforJFrogArtifactory-Example7:}

Download all files located under the *`all-my-frogs`* directory in
the *`my-local-repo`* repository **except** for files with .txt
extension and all files inside
the *`all-my-frogs `*`directory with the props. prefix.`

Notice that the exclude patterns do not include the repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
     {
        "pattern": "my-local-repo/all-my-frogs/",
        "exclusions": ["*.txt","all-my-frog/props.*"]
     }
    ]
}
```
:::
:::

###### **Example 8:**  {#CLIforJFrogArtifactory-Example8:}

Download The latest file uploaded to the *`all-my-frogs`* directory in
the *`my-local-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
     {
        "pattern": "my-local-repo/all-my-frogs/",
        "target": "all-my-frogs/files/",
        "sortBy": ["created"],
        "sortOrder": "desc",
        "limit": 1
     }
    ]
}
```
:::
:::

###### **Example 9:**  {#CLIforJFrogArtifactory-Example9:}

Search for the three largest files located under
the *`all-my-frogs`* directory in the *`my-local-repo`* repository. If
there are files with the same size, sort them \"internally\" by creation
date.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
     {
        "pattern": "my-local-repo/all-my-frogs/",
        "sortBy": ["size","created"],
        "sortOrder": "desc",
        "limit": 3
     }
    ]
}
```
:::
:::

###### **Example 10:**  {#CLIforJFrogArtifactory-Example10:}

Download The second latest file uploaded to
the *`all-my-frogs`* directory in the *`my-local-repo`* repository.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
     {
        "pattern": "my-local-repo/all-my-frogs/",
        "target": "all-my-frogs/files/",
        "sortBy": ["created"],
        "sortOrder": "desc",
        "limit": 1,
        "offset": 1
     }
    ]
}
```
:::
:::

###### [Example 11:]{style="color: rgb(0,0,0);"} {#CLIforJFrogArtifactory-Example11:}

[This example shows how to ]{style="color: rgb(0,0,0);"}[delete
artifacts in artifactory under specified path based on how old they
are](https://stackoverflow.com/questions/58328701/delete-artifacts-in-artifactory-under-specified-path-based-on-how-old-they-are){.external-link
style="text-decoration: none;"}. 

The following File Spec finds all the folders which match the following
criteria:

1.  They are under the my-repo repository.
2.  They are inside a folder with a name that matches abc-\*-xyz and is
    located at the root of the repository.
3.  Their name matches ver\_\*
4.  They were created more that 7 days ago.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
  "files": [
    {
      "aql": {
        "items.find": {
          "repo": "myrepo",
          "path": {"$match":"abc-*-xyz"},
          "name": {"$match":"ver_*"},
          "type": "folder",
          "$or": [
            {
              "$and": [
                {
                  "created": { "$before":"7d" }
                }
              ]
            }
          ]
        }
      }
    }
  ]
}
```
:::
:::

###### Example 12 {#CLIforJFrogArtifactory-Example12}

This example uses
[placeholders](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-UsingPlaceholders).
For each .tgz file in the source directory, create a corresponding
directory with the same name in the target repository and upload it
there. For example, a file named froggy.tgz should be uploaded to
my-local-rep/froggy. (froggy will be created a folder in Artifactory).

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
      {
        "pattern": "(*).tgz",
        "target": "my-local-repo/{1}/",
      }
    ]
}
```
:::
:::

\

###### Example 13 {#CLIforJFrogArtifactory-Example13}

This examples uses
[placeholders](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-UsingPlaceholders).
Upload all files whose name begins with \"frog\" to folder frogfiles in
the target repository, but append its name with the text \"-up\". For
example, a file called froggy.tgz should be renamed froggy.tgz-up.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
      {
        "pattern": "(frog*)",
        "target": "my-local-repo/frogfiles/{1}-up",
        "recursive": "false"
      }
    ]
}
```
:::
:::

\

###### Example 14 {#CLIforJFrogArtifactory-Example14}

The following two examples lead to the exact same outcome.\
The first one uses
[placeholders](https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-UsingPlaceholders),
while the second one does not. Both examples download all files from the
generic-local repository to be under the my/local/path/ local
file-system path, while maintaining the original Artifactory folder
hierarchy. Notice the different flat values in the two examples.

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" theme="Confluence"}
{
    "files": [
      {
        "pattern": "generic-local/{*}",
        "target": "my/local/path/{1}",
        "flat": "true"
      }
    ]
}

{
    "files": [
      {
        "pattern": "generic-local/",
        "target": "my/local/path/",
        "flat": "false"
      }
    ]
}
```
:::
:::

### Schema Validation {#CLIforJFrogArtifactory-SchemaValidation}

[JSON schemas](https://json-schema.org/){.external-link} allow you to
annotate and validate JSON files. The JFrog File Spec schema is
available in the [JSON Schema
Store](https://www.schemastore.org/json/){.external-link} catalog and in
the following link:
[https://github.com/jfrog/jfrog-cli/blob/v2/schema/filespec-schema.json](https://github.com/jfrog/jfrog-cli/blob/v2/schema/filespec-schema.json){.external-link}.

###### Using Jetbrains IDEs (Intellij IDEA, Webstorm, Goland, etc\...)? {#CLIforJFrogArtifactory-UsingJetbrainsIDEs(IntellijIDEA,Webstorm,Goland,etc...)?}

The File Spec schema automatically applied on the following file
patterns:

    **/filespecs/*.json
    *filespec*.json
    *.filespec

###### Using Visual Studio Code? {#CLIforJFrogArtifactory-UsingVisualStudioCode?}

To apply the File Spec schema validation, install the [JFrog VS-Code
extension](https://marketplace.visualstudio.com/items?itemName=JFrog.jfrog-vscode-extension){.external-link}.

Alternatively, copy the following to your settings.json file:

::: {.code .panel .pdl style="border-width: 1px;"}
::: {.codeHeader .panelHeader .pdl style="border-bottom-width: 1px;"}
**settings.json**
:::

::: {.codeContent .panelContent .pdl}
``` {.syntaxhighlighter-pre syntaxhighlighter-params="brush: js; gutter: false; theme: Confluence" theme="Confluence"}
"json.schemas": [
  {
    "fileMatch": ["**/filespecs/*.json", "*filespec*.json", "*.filespec"],
    "url": "https://raw.githubusercontent.com/jfrog/jfrog-cli/v2/schema/filespec-schema.json"
  }
]
```
:::
:::

## Downloading the Maven and Gradle Extractor JARs {#CLIforJFrogArtifactory-DownloadingtheMavenandGradleExtractorJARs}

For integrating with Maven and Gradle, JFrog CLI uses the
build-info-extractor jars files. These jar files are downloaded by JFrog
CLI from jcenter the first time they are needed.

If you\'re using JFrog CLI on a machine which has no access to the
internet, you can configure JFrog CLI to download these jar files from
an Artifactory instance. Here\'s how to configure Artifactory and JFrog
CLI to download the jars files.

1.  Create a remote Maven repository in Artifactory and name it
    ***extractors. ***When creating the repository, configure it
    to proxy [https://releases.jfrog.io/artifactory/oss-release-local](https://releases.jfrog.io/artifactory/oss-release-local){.external-link}

2.  Make sure that this Artifactory server is known to JFrog CLI, using
    the ***[jfrog c
    show](https://www.jfrog.com/confluence/display/CLI/JFrog+CLI#JFrogCLI-ShowingtheConfiguredServers)*** command.
    If not, configure it using the ***[jfrog c
    add](https://www.jfrog.com/confluence/display/CLI/JFrog+CLI#JFrogCLI-AddingandEditingConfiguredServers)*** command.

3.  Set
    the [***JFROG_CLI_EXTRACTORS_REMOTE*** ]{style="letter-spacing: 0.0px;"}[environment
    variable with the server ID of the Artifactory server you
    configured, followed by a slash, and then the name of the repository
    you created. For example
    ***my-rt-server/extractors***]{style="letter-spacing: 0.0px;"}

\
:::
:::
:::
:::
:::

::: {.pageSection .group}
::: pageSectionHeader
## Attachments: {#attachments .pageSectionTitle}
:::

::: {.greybox align="left"}
![](images/icons/bullet_blue.gif){height="8" width="8"}
[EEvuGvVICk.gif](attachments/53577563/105090071.gif) (image/gif)\
:::
:::
:::
:::

::: {#footer role="contentinfo"}
::: {.section .footer-body}
Document generated by Confluence on Oct 18, 2022 07:27

::: {#footer-logo}
[Atlassian](http://www.atlassian.com/)
:::
:::
:::
:::

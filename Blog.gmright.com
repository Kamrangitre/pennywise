<?xml version="1.0" encoding="Windows-1252"?>

<VisualStudioProject

	ProjectType="Visual C++"

	Version="8.00"

	Name="mkheader"

	ProjectGUID="{3C7945FF-3FE0-4270-B47C-75CA32411B55}"

	RootNamespace="mkheader"

	>

	<Platforms>

		<Platform

			Name="Win32"

		/>

	</Platforms>

	<ToolFiles>

	</ToolFiles>

	<Configurations>

		<Configuration

			Name="Release|Win32"

			OutputDirectory="$(SolutionDir)"

			IntermediateDirectory="$(ConfigurationName)"

			ConfigurationType="1"

			InheritedPropertySheets="$(VCInstallDir)VCProjectDefaults\UpgradeFromVC60.vsprops"

			UseOfMFC="0"

			ATLMinimizesCRunTimeLibraryUsage="false"

			CharacterSet="2"

			>

			<Tool

				Name="VCPreBuildEventTool"

			/>

			<Tool

				Name="VCCustomBuildTool"

			/>

			<Tool

				Name="VCXMLDataGeneratorTool"

			/>

			<Tool

				Name="VCWebServiceProxyGeneratorTool"

			/>

			<Tool

				Name="VCMIDLTool"

				TypeLibraryName=".\../mkheader.tlb"

				HeaderFileName=""

			/>

			<Tool

				Name="VCCLCompilerTool"

				Optimization="2"

				InlineFunctionExpansion="1"

				PreprocessorDefinitions="_CRT_SECURE_NO_DEPRECATE;WIN32"

				StringPooling="true"

				RuntimeLibrary="0"

				EnableFunctionLevelLinking="true"

				WarningLevel="3"

				SuppressStartupBanner="true"

				CompileAs="1"

			/>

			<Tool

				Name="VCManagedResourceCompilerTool"

			/>

			<Tool

				Name="VCResourceCompilerTool"

				PreprocessorDefinitions="NDEBUG"

				Culture="1033"

			/>

			<Tool

				Name="VCPreLinkEventTool"

			/>

			<Tool

				Name="VCLinkerTool"

				AdditionalDependencies="odbc32.lib odbccp32.lib"

				LinkIncremental="1"

				SuppressStartupBanner="true"

				ProgramDatabaseFile=".\../mkheader.pdb"

				SubSystem="1"

				TargetMachine="1"

			/>

			<Tool

				Name="VCALinkTool"

			/>

			<Tool

				Name="VCManifestTool"

			/>

			<Tool

				Name="VCXDCMakeTool"

			/>

			<Tool

				Name="VCBscMakeTool"

				SuppressStartupBanner="true"

				OutputFile=".\../mkheader.bsc"

			/>

			<Tool

				Name="VCFxCopTool"

			/>

			<Tool

				Name="VCAppVerifierTool"

			/>

			<Tool

				Name="VCWebDeploymentTool"

			/>

			<Tool

				Name="VCPostBuildEventTool"

				Description="Create columns.h and tables.h"

				CommandLine="mkheader.exe column_list.txt"

			/>

		</Configuration>

		<Configuration

			Name="Debug|Win32"

			OutputDirectory="$(SolutionDir)"

			IntermediateDirectory="$(ConfigurationName)"

			ConfigurationType="1"

			InheritedPropertySheets="$(VCInstallDir)VCProjectDefaults\UpgradeFromVC60.vsprops"

			UseOfMFC="0"

			ATLMinimizesCRunTimeLibraryUsage="false"

			CharacterSet="2"

			>

			<Tool

				Name="VCPreBuildEventTool"

			/>

			<Tool

				Name="VCCustomBuildTool"

			/>

			<Tool

				Name="VCXMLDataGeneratorTool"

			/>

			<Tool

				Name="VCWebServiceProxyGeneratorTool"

			/>

			<Tool

				Name="VCMIDLTool"

				TypeLibraryName=".\./mkheader.tlb"

				HeaderFileName=""

			/>

			<Tool

				Name="VCCLCompilerTool"

				Optimization="0"

				PreprocessorDefinitions="_CRT_SECURE_NO_DEPRECATE;WIN32"

				MinimalRebuild="true"

				BasicRuntimeChecks="3"

				RuntimeLibrary="1"

				WarningLevel="3"

				SuppressStartupBanner="true"

				DebugInformationFormat="4"

				CompileAs="1"

			/>

			<Tool

				Name="VCManagedResourceCompilerTool"

			/>

			<Tool

				Name="VCResourceCompilerTool"

				PreprocessorDefinitions="_DEBUG"

				Culture="1033"

			/>

			<Tool

				Name="VCPreLinkEventTool"

			/>

			<Tool

				Name="VCLinkerTool"

				AdditionalDependencies="odbc32.lib odbccp32.lib"

				OutputFile="$(SolutionDir)$(ProjectName).exe"

				LinkIncremental="2"

				SuppressStartupBanner="true"

				GenerateDebugInformation="true"

				SubSystem="1"

				TargetMachine="1"

			/>

			<Tool

				Name="VCALinkTool"

			/>

			<Tool

				Name="VCManifestTool"

			/>

			<Tool

				Name="VCXDCMakeTool"

			/>

			<Tool

				Name="VCBscMakeTool"

				SuppressStartupBanner="true"

			/>

			<Tool

				Name="VCFxCopTool"

			/>

			<Tool

				Name="VCAppVerifierTool"

			/>

			<Tool

				Name="VCWebDeploymentTool"

			/>

			<Tool

				Name="VCPostBuildEventTool"

				Description="Creating columns.h/streams.h"

				CommandLine="mkheader.exe column_list.txt"

			/>

		</Configuration>

	</Configurations>

	<References>

	</References>

	<Files>

		<Filter

			Name="Source Files"

			Filter="cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"

			>

			<File

				RelativePath="mkheader.c"

				>

				<FileConfiguration

					Name="Release|Win32"

					>

					<Tool

						Name="VCCLCompilerTool"

						PreprocessorDefinitions=""

					/>

				</FileConfiguration>

				<FileConfiguration

					Name="Debug|Win32"

					>

					<Tool

						Name="VCCLCompilerTool"

						PreprocessorDefinitions=""

					/>

				</FileConfiguration>

			</File>

		</Filter>

		<Filter

			Name="Header Files"

			Filter="h;hpp;hxx;hm;inl"

			>


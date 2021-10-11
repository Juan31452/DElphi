unit UServidorDCOM_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 41960 $
// File generated on 10/10/2021 3:12:24 p. m. from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Juliana\Desktop\delphi\crud\MoClientes\UServidorDCOM (1)
// LIBID: {CC7BFDF4-FC70-4937-A4E0-8D2A4F4DD540}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 Midas, (C:\Program Files (x86)\Embarcadero\RAD Studio\9.0\bin64\midas.dll)
//   (3) v4.0 StdVCL, (C:\WINDOWS\SysWOW64\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Windows, ActiveX, Classes, Graphics, Midas, OleServer, StdVCL, Variants;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  UServidorDCOMMajorVersion = 1;
  UServidorDCOMMinorVersion = 0;

  LIBID_UServidorDCOM: TGUID = '{CC7BFDF4-FC70-4937-A4E0-8D2A4F4DD540}';

  IID_IServidorDCOM: TGUID = '{8559A76D-AF23-4C6B-9D32-F02001567BAB}';
  CLASS_ServidorDCOM: TGUID = '{B24F0658-87D7-45B1-AB21-8EF128E5CD86}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IServidorDCOM = interface;
  IServidorDCOMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  ServidorDCOM = IServidorDCOM;


// *********************************************************************//
// Interface: IServidorDCOM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8559A76D-AF23-4C6B-9D32-F02001567BAB}
// *********************************************************************//
  IServidorDCOM = interface(IAppServer)
    ['{8559A76D-AF23-4C6B-9D32-F02001567BAB}']
  end;

// *********************************************************************//
// DispIntf:  IServidorDCOMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8559A76D-AF23-4C6B-9D32-F02001567BAB}
// *********************************************************************//
  IServidorDCOMDisp = dispinterface
    ['{8559A76D-AF23-4C6B-9D32-F02001567BAB}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer;
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer;
                           Options: Integer; const CommandText: WideString; var Params: OleVariant;
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer;
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString;
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoServidorDCOM provides a Create and CreateRemote method to
// create instances of the default interface IServidorDCOM exposed by
// the CoClass ServidorDCOM. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoServidorDCOM = class
    class function Create: IServidorDCOM;
    class function CreateRemote(const MachineName: string): IServidorDCOM;
  end;

implementation

uses ComObj;

class function CoServidorDCOM.Create: IServidorDCOM;
begin
  Result := CreateComObject(CLASS_ServidorDCOM) as IServidorDCOM;
end;

class function CoServidorDCOM.CreateRemote(const MachineName: string): IServidorDCOM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServidorDCOM) as IServidorDCOM;
end;

end.


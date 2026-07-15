declare module '@apiverve/imageconverter' {
  export interface imageconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface imageconverterResponse {
    status: string;
    error: string | null;
    data: ImageConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ImageConverterData {
      id:           null | string;
      inputFormat:  null | string;
      outputFormat: null | string;
      inputSize:    number | null;
      outputSize:   number | null;
      mimeType:     null | string;
      expires:      number | null;
      downloadURL:  null | string;
  }

  export default class imageconverterWrapper {
    constructor(options: imageconverterOptions);

    execute(callback: (error: any, data: imageconverterResponse | null) => void): Promise<imageconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: imageconverterResponse | null) => void): Promise<imageconverterResponse>;
    execute(query?: Record<string, any>): Promise<imageconverterResponse>;
  }
}

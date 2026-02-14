declare module '@apiverve/imageconverter' {
  export interface imageconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface imageconverterResponse {
    status: string;
    error: string | null;
    data: ImageConverterData;
    code?: number;
  }


  interface ImageConverterData {
      id:           string;
      inputFormat:  string;
      outputFormat: string;
      inputSize:    number;
      outputSize:   number;
      mimeType:     string;
      expires:      number;
      downloadURL:  string;
  }

  export default class imageconverterWrapper {
    constructor(options: imageconverterOptions);

    execute(callback: (error: any, data: imageconverterResponse | null) => void): Promise<imageconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: imageconverterResponse | null) => void): Promise<imageconverterResponse>;
    execute(query?: Record<string, any>): Promise<imageconverterResponse>;
  }
}

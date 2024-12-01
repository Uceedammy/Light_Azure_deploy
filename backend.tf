terraform { 
  cloud { 
    
    organization = "silverink" 

    workspaces { 
      name = "light_Azure_deployment" 
    } 
  } 
}
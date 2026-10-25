#![windows_subsystem = "windows"]

use std::{ env, path, process, io::{ Result, Error, ErrorKind } };

fn main() -> Result<()> {
    let mut args = env::args();
    args.next();
    let arg = args.next().ok_or(Error::new(ErrorKind::InvalidInput, "Argument not passed"))?;
    let file = path::Path::new(&arg);
    let dir = file.parent().ok_or(Error::new(ErrorKind::Other, "Non-dir was passed as agument"))?;
    let mut wt = process::Command::new("wt").args([
        "-w", "new", "-f",
        "-d", dir.to_str().ok_or(Error::new(ErrorKind::InvalidInput, "Non utf8-decodable"))?,
        "-p", "Bash",
        "nvim", file.to_str().ok_or(Error::new(ErrorKind::InvalidInput, "Non utf8-decodable"))?
    ]).spawn()?;

    wt.wait()?;

    Ok(())
}

